require 'spec_helper'

describe "Static pages" do
	subject { page }

  describe "Home page" do
  	before { visit root_path }
    it { should have_selector('a', :text => 'Stanford Club of San Francisco') }
    it { should have_selector('title', :text => "Stanford Club of San Francisco") }
  end 
end