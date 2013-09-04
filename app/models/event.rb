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

class Event < ActiveRecord::Base
  attr_accessible :name,  
	      					:start_date, 
	      					:start_time,
	      					:end_date,
	                :end_time,
	      					:address,
	      					:description,
	      					:registration_url,
	      					:committee_id,
	      					:cost_member,
	      					:cost_guest,
                  :cost_young_alumn,
	      					:capacity,
	      					:committee_id,
	      					:image_id,
	      					:organizer,
	      					:organizer_email,
	      					:sold_out,
	                :featured,
	      					:created_by,
	      					:last_updated_by,
	                :event_state_id,
	                :longitude,
	                :latitude,
	                :slug

  belongs_to	:event_state
  belongs_to 	:committee

  before_validation :generate_slug
  validates	:slug, presence: true, uniqueness: true

  # Draft Validations
  validates :name, :committee_id, :start_date, :start_time, :event_state_id, presence: true


  # Publish Validations
  validates :name, presence: true, :if => :published?
  validates :description, presence: true, length: { minimum: 25 }, :if => :published?
  validates :address, :cost_member, presence: true, :if => :published?

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def to_param
    slug
  end

  def generate_slug
    self.slug ||= "#{self.name.parameterize}-#{self.start_date}"
  end

private
   def published?
      event_state_id == 1
   end
end
