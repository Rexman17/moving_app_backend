class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :box_id
  belongs_to :box
end
