class EventState < ActiveRecord::Base
  attr_accessible :name, :name_order

  has_many :events
end
