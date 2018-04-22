class Platform < ApplicationRecord
  belongs_to :company
  belongs_to :default_platform
  has_many :nicknames
end
