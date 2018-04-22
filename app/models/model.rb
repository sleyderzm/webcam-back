class Model < ApplicationRecord
  belongs_to :company
  has_many :applied_sanctions
  has_many :nicknames
  has_many :loans
  has_many :details
end
