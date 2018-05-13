class Equipment < ApplicationRecord
  # Direct associations

  has_many   :photos,
             :dependent => :destroy

  belongs_to :loaner,
             :class_name => "Borrower",
             :foreign_key => "user_id"

  # Indirect associations

  # Validations

end
