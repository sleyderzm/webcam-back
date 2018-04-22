class Paysheet < ApplicationRecord
  belongs_to :head_quarte
  has_many :details
end
