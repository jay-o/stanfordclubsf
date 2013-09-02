require 'spec_helper'

describe "Authentication" do

  subject { page }
  let(:admin) { FactoryGirl.create(:admin) }
  let(:user) { FactoryGirl.create(:user) }
  let(:old_user) { FactoryGirl.create(:old_user) }
  let(:event) { FactoryGirl.create(:event) }

  # Login Pages
  describe "signin page" do
    before { visit signin_path }

    it { should have_selector('h1',    text: 'Admin Login') }
    it { should have_selector('title', text: 'Admin Login') }
  end

  # Login 
  describe "signin" do
    before { visit signin_path }

    # with bad info
    describe "with no information" do
      before { click_button "Sign in" }

      it { should have_selector('title', text: 'Admin Login') }
      it { should have_selector('div.alert.alert-error', text: 'Invalid email/password combination') }

      # tests flash message disappears
      describe "after visiting another page" do
        before { visit root_path }
        it { should_not have_selector('div.alert.alert-error') }
      end
    end

    # signin with no account
    describe "with bad information" do
      before do 
        fill_in "Email",  with: "noaccount@test.com"
        click_button "Sign in"
      end
      
      it { should have_selector('title', text: 'Admin Login') }
      it { should have_selector('div.alert.alert-error', text: 'Invalid email/password combination') }
    end

    # signin with closed acount
    describe "with old account" do
      before do 
        fill_in "Email",      with: old_user.email
        fill_in "Password",   with: old_user.password
        click_button "Sign in"
      end
      
      it { should have_selector('title', text: 'Admin Login') }
      it { should have_selector('div.alert.alert-error', text: 'Account no longer active') }
    end


    # Login with good info
    describe "with valid information" do
      before do
        fill_in "Email",    with: user.email
        fill_in "Password", with: user.password
        click_button "Sign in"
      end

      it { should have_selector('h1', text: "Admin Tools") }
      it { should have_link('Sign out', href: signout_path) }
      it { should_not have_link('Sign in', href: signin_path) }

      describe "followed by signout" do
        before { click_link "Sign out" }
        it { should have_link('Admin Login') }
        it { should_not have_link('Sign out', href: signout_path) }
      end
    end
  end

  # Permissions
  describe "being an admin" do
    before do
      visit signin_path
      fill_in "Email",    with: admin.email
      fill_in "Password", with: admin.password
      click_button "Sign in"
      visit user_path(admin)
    end
    
    it { should have_selector('p',    text: "Admin: true") }
    it { should have_selector('div.bar', text: 'Logged in as Board Member') }

    describe "viewing admin page" do
      before { visit '/admin' }
      it { should have_selector('h1', text: "Admin Tools") }
    end
    
    describe "viewing add user page" do
      before { visit adduser_path }

      it { should have_selector('h1',    text: 'Add User Account') }
      it { should have_selector('title', text: full_title('Add User Account')) }
    end

    describe "viewing edit event page" do
      before { visit edit_event_path(event) }

      it { should have_selector('legend', text: event.name) }
      it { should have_selector('title',  text: event.name) }
      it { should have_selector('input',  value: "Edit Event") }
    end
  end

  describe "being a user" do
    before do
      visit signin_path
      fill_in "Email",    with: user.email
      fill_in "Password", with: user.password
      click_button "Sign in"
      visit user_path(user)
    end
    
    it { should have_selector('p',    text: "Admin: false") }
    it { should have_selector('div.bar', text: 'Logged in as Board Member') }

    # user shoudn't be able to access create user page
    describe "viewing add user page" do
      before { visit adduser_path }
      
      its(:current_path) { should == '/admin' }
      it { should have_selector('h1', text: "Admin Tools") }
      it { should have_selector('div.alert.alert-error', text: 'Access denied') }
    end
  end

  # Regular visitor should not be able to access
  # - admin
  # - users list
  # - edit users
  # - create users
  # - edit event
  # - create event
  describe "being a visitor" do
    describe "viewing admin" do
      before { visit '/admin' }

      it { should have_selector('h1', text: "Admin Login") }
      it { should have_selector('div.alert.alert-error', text: 'Access denied') }
    end

    describe "viewing users" do
      before { visit users_path }

      it { should have_selector('h1', text: "Admin Login") }
      it { should have_selector('div.alert.alert-error', text: 'Access denied') }
    end

    describe "viewing user edit" do
      before { visit edit_user_path(user) }

      it { should have_selector('h1', text: "Admin Login") }
      it { should have_selector('div.alert.alert-error', text: 'Access denied') }
    end

    describe "viewing add user" do
      before { visit adduser_path }

      it { should have_selector('h1', text: "Admin Login") }
      it { should have_selector('div.alert.alert-error', text: 'Access denied') }
    end

    describe "viewing add event page" do
      before { visit new_event_path }

      it { should have_selector('h1', text: "Admin Login") }
      it { should have_selector('div.alert.alert-error', text: 'Access denied') }
    end

    describe "viewing edit event page" do
      before { visit edit_event_path(event) }

      it { should have_selector('h1', text: "Admin Login") }
      it { should have_selector('div.alert.alert-error', text: 'Access denied') }
    end
  end
end