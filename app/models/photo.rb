class Photo < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  belongs_to :equipment,
             :required => false,
             :class_name => "Equipment",
             :counter_cache => true

  # Indirect associations

  # Validations

end
