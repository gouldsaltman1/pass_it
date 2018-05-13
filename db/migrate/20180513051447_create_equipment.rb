class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.integer :user_id

      t.timestamps

    end
  end
end
