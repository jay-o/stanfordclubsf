class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string  :name
      t.text    :description
      t.date    :start_date
      t.string  :start_time
      t.date    :end_date
      t.string  :end_time
      t.boolean :featured
      t.boolean :sold_out
      t.string  :cost_member
      t.string  :cost_young_alumn
      t.string  :cost_guest
      t.string  :capacity
      t.string  :organizer
      t.string  :organizer_email
      t.integer :committee_id
      t.integer :image_id
      t.string  :address
      t.float   :latitude
      t.float   :longitude
      t.integer :event_state_id, :default => 2 #draft
      t.string  :registration_url
      t.integer :created_by
      t.integer :last_updated_by

      t.timestamps
    end
  end
end
