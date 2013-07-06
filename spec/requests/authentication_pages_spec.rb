require 'spec_helper'

describe "Authentication" do

  subject { page }

  # Login Pages
  describe "signin page" do
    before { visit signin_path }

    it { should have_selector('h1',    text: 'Admin Login') }
    it { should have_selector('title', text: 'Admin Login') }
  end

  # Login with bad info
  describe "signin" do
    before { visit signin_path }

    describe "with invalid information" do
      before { click_button "Sign in" }

      it { should have_selector('title', text: 'Admin Login') }
      it { should have_selector('div.alert.alert-error', text: 'Invalid email/password combination') }

      describe "after visiting another page" do
        before { click_link "Home" }
        it { should_not have_selector('div.alert.alert-error') }
      end
    end

    # Login with good info
    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
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
    let(:admin) { FactoryGirl.create(:admin) }
    before do
      visit signin_path
      fill_in "Email",    with: admin.email
      fill_in "Password", with: admin.password
      click_button "Sign in"
      visit user_path(admin)
    end
    
    it { should have_selector('p',    text: "Admin: true") }
    it { should have_selector('div#admin-header', text: 'Admin View:') }

    describe "admin page" do
      before { visit '/admin' }
      it { should have_selector('h1', text: "Admin Tools") }
    end
    
    describe "add user page" do
      before { visit adduser_path }

      it { should have_selector('h1',    text: 'Add User Account') }
      it { should have_selector('title', text: full_title('Add User Account')) }
    end
  end

  describe "being a user" do
    let(:user) { FactoryGirl.create(:user) }
    before do
      visit signin_path
      fill_in "Email",    with: user.email
      fill_in "Password", with: user.password
      click_button "Sign in"
      visit user_path(user)
    end
    
    it { should have_selector('p',    text: "Admin: false") }
    it { should have_selector('div#admin-header', text: 'Admin View:') }

    # user shoudn't be able to access page or create user
    describe "add user page" do
      before { visit adduser_path }
      
      it "redirects to the admin page" do
        current_path.should == '/admin'
      end
      it { should have_selector('h1', text: "Admin Tools") }
      it { should have_selector('div.alert.alert-error', text: 'Access denied') }
    end
  end
end