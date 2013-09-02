# == Schema Information
#
# Table name: events
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  description      :text
#  start_date       :date
#  start_time       :string(255)
#  end_date         :date
#  end_time         :string(255)
#  featured         :boolean
#  sold_out         :boolean
#  cost_member      :string(255)
#  cost_young_alumn :string(255)
#  cost_guest       :string(255)
#  capacity         :string(255)
#  organizer        :string(255)
#  organizer_email  :string(255)
#  committee_id     :integer
#  image_id         :integer
#  address          :string(255)
#  latitude         :float
#  longitude        :float
#  event_state_id   :integer          default(2)
#  registration_url :string(255)
#  created_by       :integer
#  last_updated_by  :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  slug             :string(255)
#

require 'spec_helper'

describe Event do

  before { @event = FactoryGirl.create(:event)  }

  subject { @event }

  it { should respond_to(:name) }
  it { should respond_to(:committee_id) }
  it { should respond_to(:event_state_id) }
  it { should respond_to(:start_date) }
  it { should respond_to(:start_time) }
  it { should respond_to(:slug) }
  it { should be_valid }

  # Creating Event
  describe "is created" do
    before { @event.save }
  	its(:name) { should == @event.name }
    
    describe "should be draft by default" do
      its(:event_state_id) { should == 2 }
    end
	end
	
  # Validations
  describe "when event name is not present" do
    before { @event.name = " " }
    it { should_not be_valid }
  end

end
