class Box < ApplicationRecord
  belongs_to :move
  has_many :items
  # belongs_to :user
end
