class Item < ApplicationRecord
  belongs_to :user
  belongs_to :box, optional: true
end
