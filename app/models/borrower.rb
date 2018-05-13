class Borrower < ApplicationRecord
  # Direct associations

  has_many   :loans,
             :foreign_key => "borrow_id",
             :dependent => :destroy

  has_many   :equipment,
             :foreign_key => "user_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
