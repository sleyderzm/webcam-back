class Nickname < ApplicationRecord
  belongs_to :model
  belongs_to :platform
  has_many :platform_gains
end
