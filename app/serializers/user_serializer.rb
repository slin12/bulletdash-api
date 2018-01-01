class UserSerializer < ActiveModel::Serializer
  attributes :name, :theme
  has_many :tasks
  has_many :notes
end
