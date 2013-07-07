require 'spec_helper'

describe Event do

  before { @event = FactoryGirl.create(:event)  }

  subject { @event }

  it { should respond_to(:name) }
  it { should respond_to(:slug) }
  it { should be_valid }

  # Creating Event
  describe "is created" do
  	its(:name) { should == @event.name }
	end
	
  # Validations
  describe "when event name is not present" do
    before { @event.name = " " }
    it { should_not be_valid }
  end

end
