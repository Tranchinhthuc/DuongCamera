require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :title => "Title",
        :price => 2.5,
        :size => "Size",
        :color => "Color",
        :description => "Description"
      ),
      Product.create!(
        :title => "Title",
        :price => 2.5,
        :size => "Size",
        :color => "Color",
        :description => "Description"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
