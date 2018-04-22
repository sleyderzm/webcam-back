class LoanPayment < ApplicationRecord
  belongs_to :detail
  belongs_to :loan
end
