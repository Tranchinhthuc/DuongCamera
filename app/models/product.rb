class Product < ApplicationRecord
  has_many :category_products
  has_many :categories, through: :category_products

  mount_uploader :snap, SnapProductUploader

  class << self
    def filter_by_category category
      products = if category.present? && category.products.size > 0
                        category.products
                      else
                        Product.order("random()")
                      end
      if category == Category.first
        products.order("created_at desc").limit(Settings.product_limit.new)
      elsif category == Category.limit(2)[1]
        products.order("created_at desc").limit(Settings.product_limit.popular)
      end
    end

    def find_by_category category_title
      Category.find_by(title: category_title).products
    end
  end
end
