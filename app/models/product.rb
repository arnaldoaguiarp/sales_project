class Product < ApplicationRecord
  has_one_attached :image
  has_many :order_products
  has_many :orders, through: :order_products
end
