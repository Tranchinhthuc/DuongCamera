class StaticPagesController < ApplicationController
  def index
    @new_arrivals = Product.filter_by_category(Category.first)
    @populer_product = Product.filter_by_category(Category.limit(2)[1])
    @categories = Category.where(parent_category: nil)
    @trends = Trend.all.limit(4)
  end
end
