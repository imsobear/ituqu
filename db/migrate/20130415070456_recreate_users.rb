class RecreateUsers < ActiveRecord::Migration
  def up
  	drop_table :users
  	
  	create_table(:users) do |t|
  		t.integer :uid
  		t.string :name
  		t.string :description
  		t.string :email
  		t.string :avatar
  		t.string :weibo
  		t.string :location


      t.timestamps
    end
  end

  def down
  end
end
