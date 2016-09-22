require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :title => "MyString",
      :price => 1.5,
      :size => "MyString",
      :color => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_title[name=?]", "product[title]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_size[name=?]", "product[size]"

      assert_select "input#product_color[name=?]", "product[color]"

      assert_select "input#product_description[name=?]", "product[description]"
    end
  end
end
