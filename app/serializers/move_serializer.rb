class MoveSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :user_id
  belongs_to :user
  has_many :boxes
  # has_many :items, through: :boxes
end
