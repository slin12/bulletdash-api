class User < ApplicationRecord
  has_many :users
  has_many :notes
  has_many :tasks
end
