class Company < ApplicationRecord
  has_many :head_quartes
  has_many :admin_deductions
  has_many :sanctions
  has_many :users
  has_many :platforms
  has_many :models
end
