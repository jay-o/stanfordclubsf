class Committee < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :events

  validates :name, :description, presence: true
end
