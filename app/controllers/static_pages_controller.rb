class StaticPagesController < ApplicationController
  def index
    @new_arrivals = Product.filter_by_category(Category.first)
    @populer_product = Product.filter_by_category(Category.limit(2)[1])
    @trends = Trend.all.order("random()").limit(4)
  end
end
