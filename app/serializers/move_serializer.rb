class MoveSerializer < ActiveModel::Serializer
  attributes :id, :name, :date
  belongs_to :user
  has_many :boxes
end
