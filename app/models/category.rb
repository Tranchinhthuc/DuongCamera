class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products
  has_many :sub_categories, class_name: "Category"
  belongs_to :parent_category, :class_name => "Category", :foreign_key => "parent_category_id"
  has_many :sub_categories, :class_name => "Category", :foreign_key => "parent_category_id"

  validates :title, uniqueness: true
end
