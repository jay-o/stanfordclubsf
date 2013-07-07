require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "visit new account page" do

    describe "as non admin" do
      before { visit adduser_path }

      it { should have_selector('h1', text: "Admin Login") }
      it { should have_selector('div.alert.alert-error', text: 'Access denied') }
    end

    describe "as admin" do
      let(:admin) { FactoryGirl.create(:admin) }
      let(:submit) { "Create User" }
      before do
        visit signin_path
        fill_in "Email",    with: admin.email
        fill_in "Password", with: admin.password
        click_button "Sign in"
        visit adduser_path
      end

      it { should have_selector('h1', text: "Add User Account") }

      describe "with invalid information" do
        it "should not create a user" do
          expect { click_button submit }.not_to change(User, :count)
        end
      end

      describe "with valid information" do
        before do
          fill_in "First name",   with: "FirstName"
          fill_in "Last name",    with: "LastName"
          fill_in "Email",        with: "user@example.com"
          fill_in "Password",     with: "foobar"
          fill_in "Password confirmation",  with: "foobar"
        end

        it "should create a user" do
          expect { click_button submit }.to change(User, :count).by(1)
        end

        describe "after saving the user" do
          before { click_button submit }
          let(:user) { User.find_by_email('user@example.com') }

          it { should have_selector('h1', text: "Admin Tools") }
          it { should have_selector('div.alert.alert-notice', text: 'User Sucessfully Created: user@example.com') }
        end 
      end
    end
  end
end
