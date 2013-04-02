class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :description
      t.string :image
      t.references :journal

      t.timestamps
    end
    add_index :pictures, :journal_id
  end
end
