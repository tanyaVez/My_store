class Item < ActiveRecord::Base
  validates :price, numericality: {greater_than: 0, allow_nil: true}
  validates :name, presence: true

  has_many :positions
  has_many :carts, through: :positions

  has_many :comments, as: :commentable

end
