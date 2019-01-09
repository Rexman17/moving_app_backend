class BoxSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :move_id
  belongs_to :move
  has_many :items
end
