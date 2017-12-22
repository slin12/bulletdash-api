class UserSerializer < ActiveModel::Serializer
  attributes :name
  has_many :tasks
  has_many :notes
end
