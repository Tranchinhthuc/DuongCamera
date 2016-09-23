class StaticPagesController < ApplicationController
  def index
    @new_arrivals = Category.new_products
  end
end
