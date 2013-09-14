class AddTitleActiveToUsers < ActiveRecord::Migration
  def change
    add_column :users, :position, :string
    add_column :users, :committee_id, :integer
    add_column :users, :state, :string, :default => "Active"
  end
end
