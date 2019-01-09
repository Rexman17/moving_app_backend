class User < ApplicationRecord
  has_many :moves
  # has_many :boxes, through: :moves
end
