class User < ApplicationRecord
  has_many :notes
  has_many :tasks
  has_many :trackers

  has_secure_password
end
