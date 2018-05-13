class Loan < ApplicationRecord
  # Direct associations

  belongs_to :equipment,
             :class_name => "Equipment",
             :counter_cache => true

  belongs_to :lender,
             :counter_cache => true

  belongs_to :borrow,
             :class_name => "Borrower"

  # Indirect associations

  # Validations

end
