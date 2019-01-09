class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :user_id, :box_id
  belongs_to :user
  belongs_to :box, optional: true
end
