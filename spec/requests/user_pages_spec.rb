require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: 'Create Account') }
    it { should have_selector('title', text: full_title('Create Account')) }
  end

  describe "signup" do
    before { visit signup_path }
    let(:submit) { "Create Account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "First name",		with: "FirstName"
        fill_in "Last name",		with: "LastName"
        fill_in "Email",				with: "user@example.com"
        fill_in "Password",			with: "foobar"
        fill_in "Password confirmation",	with: "foobar"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end

      describe "after saving the user" do
        before { click_button submit }
        let(:user) { User.find_by_email('user@example.com') }
        it { should have_link('Sign out') }
      end 
    end
  end
end