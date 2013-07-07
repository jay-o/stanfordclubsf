class CreateEventStates < ActiveRecord::Migration
  def change
    create_table :event_states do |t|
      t.string :name
      t.integer :name_order

      t.timestamps
    end
  end
end
