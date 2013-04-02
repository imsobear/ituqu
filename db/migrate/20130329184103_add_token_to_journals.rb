class AddTokenToJournals < ActiveRecord::Migration
  def change
  	 add_column :journals, :token, :string
  	 add_column :pictures, :journal_token, :string
  end
end
