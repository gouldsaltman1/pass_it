class Loan < ApplicationRecord
  # Direct associations

  belongs_to :lender,
             :counter_cache => true

  belongs_to :borrow,
             :class_name => "Borrower"

  # Indirect associations

  # Validations

end
