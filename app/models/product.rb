class Product < ApplicationRecord
  has_many :category_products
  has_many :categories, through: :category_products

  mount_uploader :snap, SnapProductUploader

  class << self
    def filter_by_category category_name
      products = if Category.find_by(title: category_name).present? && Category.find_by(title: category_name).products.limit(4).size > 4
                        Category.find_by(title: category_name).products
                      else
                        Product.order("random()")
                      end
      if category_name == Settings.category_name.new
        products.order("created_at desc").limit(Settings.product_limit.new)
      elsif category_name == Settings.category_name.popular
        products.order("created_at desc").limit(Settings.product_limit.popular)
      end
    end

    def find_by_category category_title
      Category.find_by(title: category_title).products
    end
  end
end
