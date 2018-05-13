class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :equipment_id
      t.string :photo

      t.timestamps

    end
  end
end
