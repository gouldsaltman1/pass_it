class AddPhotoCountToEquipment < ActiveRecord::Migration[5.0]
  def change
    add_column :equipment, :photos_count, :integer
  end
end
