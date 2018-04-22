class AdminDeduction < ApplicationRecord
  has_many :deductions
  belongs_to :company
end
