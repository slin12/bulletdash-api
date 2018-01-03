class User < ApplicationRecord
  has_many :notes
  has_many :tasks
  has_many :trackers

  validates :username, uniqueness: true

  has_secure_password
end
