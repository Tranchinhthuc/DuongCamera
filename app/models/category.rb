class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products

  validates :title, uniqueness: true

  class << self
    def new_products
      new_arrivals  = if Category.find_by(title: "New").present? && Category.find_by(title: "New").products.limit(4).size > 4
        Category.find_by(title: "New").products
      else
        Product.order("random()").limit(4)
      end

      new_arrivals.order("created_at desc")
    end
  end
end
