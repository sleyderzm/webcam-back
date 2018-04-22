class Detail < ApplicationRecord
  belongs_to :paysheet
  belongs_to :model
  has_many :loan_payments
  has_many :deductions
  has_many :applied_sanctions
  has_many :platform_gains
end
