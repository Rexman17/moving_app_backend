class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :moves
  # has_many :boxes, through: :moves
end
