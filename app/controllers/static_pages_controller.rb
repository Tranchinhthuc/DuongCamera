class StaticPagesController < ApplicationController
  def index
    @new_arrivals = Product.filter_by_category("New")
    @populer_product = Product.filter_by_category("Popular")
  end
end
