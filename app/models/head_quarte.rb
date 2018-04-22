class HeadQuarte < ApplicationRecord
  belongs_to :company
  has_many :paysheets
  has_many :applied_sanctions
end
