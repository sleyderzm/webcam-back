class Loan < ApplicationRecord
  belongs_to :model
  has_many :loan_payments
end
