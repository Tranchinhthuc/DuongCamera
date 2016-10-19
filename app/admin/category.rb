ActiveAdmin.register Category do
  permit_params :title, :parent_category_id, :priority

  index do
    selectable_column
    id_column
    column :title
    actions
  end

  form do |f|
    f.inputs "Category Title" do
      f.input :title
      f.input :priority
      f.input :parent_category_id, as: :select, collection: Category.all
    end
    f.actions
  end
end
