class User < ApplicationRecord
  belongs_to :role
  belongs_to :company, optional: true
  has_many :sessions

  def self.digest_password(password)
    Digest::SHA256.digest password
  end

end
