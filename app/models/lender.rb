class Lender < ApplicationRecord
  # Direct associations

  has_many   :loans,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
