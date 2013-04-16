class AddLocationToJournals < ActiveRecord::Migration
  def change
    add_column :journals, :location, :string
  end
end
