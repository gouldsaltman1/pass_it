class Equipment < ApplicationRecord
  # Direct associations

  belongs_to :loaner,
             :class_name => "Borrower",
             :foreign_key => "user_id"

  # Indirect associations

  # Validations

end
