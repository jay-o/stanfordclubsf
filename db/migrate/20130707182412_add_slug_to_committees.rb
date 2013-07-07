class AddSlugToCommittees < ActiveRecord::Migration
  def change
    add_column :committees, :slug, :string
    add_index :committees, :slug
  end
end
