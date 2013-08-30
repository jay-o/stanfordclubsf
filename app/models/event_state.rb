# == Schema Information
#
# Table name: event_states
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  name_order :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EventState < ActiveRecord::Base
  attr_accessible :name, :name_order

  has_many :events
end
