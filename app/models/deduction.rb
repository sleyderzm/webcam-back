class Deduction < ApplicationRecord
  belongs_to :detail
  belongs_to :admin_deduction
end
