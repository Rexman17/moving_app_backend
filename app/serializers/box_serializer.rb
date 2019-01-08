class BoxSerializer < ActiveModel::Serializer
  attributes :id, :name, :category
  belongs_to :move
  has_many :items
end
