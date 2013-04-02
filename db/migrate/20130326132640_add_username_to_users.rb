class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :city, :string
    add_column :users, :avatar, :string
  end
end
