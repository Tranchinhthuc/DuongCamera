class AddSubCatToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :parent_category_id, :integer
    add_column :categories, :priority, :integer
  end
end
