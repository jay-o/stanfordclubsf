require 'spec_helper'

describe Event do

  before { @event = Event.new( name: "Test Event" ) }

  subject { @event }

  it { should respond_to(:name) }
  it { should be_valid }

  # Creating Event
  describe "is created" do
  	its(:name) { should == 'Test Event' }
	end
	
  # Validations
  describe "when event name is not present" do
    before { @event.name = " " }
    it { should_not be_valid }
  end

  describe "when event name is nil" do
    before { @event.name = nil }
    it { should_not be_valid }
  end

end
