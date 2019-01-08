class Move < ApplicationRecord
  belongs_to :user
  has_many :boxes
end
