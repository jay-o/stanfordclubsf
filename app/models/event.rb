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
  validates :name, :committee_id, presence: true

  # Publish Validations
  validates :name, presence: true, :if => :published?
  validates :description, presence: true, length: { minimum: 25 }, :if => :published?
  validates :start_date, :start_time, :address, :cost_member, :cost_guest, :organizer, presence: true, :if => :published?

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def to_param
    slug
  end

  def generate_slug
    self.slug ||= name.parameterize
  end

private
   def published?
      event_state_id == 1
   end
end
