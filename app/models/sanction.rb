class Sanction < ApplicationRecord
  belongs_to :company
  has_many :applied_sanctions
end
