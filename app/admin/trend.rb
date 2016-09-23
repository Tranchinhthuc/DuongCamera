ActiveAdmin.register Trend do
  permit_params :snap, :first_title, :last_title, :sub_title, :description

  index do
    selectable_column
    id_column
    column :first_title
    column :last_title
    column :sub_title
    column :description
    column :snap do |product|
      image_tag product.snap.trend.url
    end
    actions
  end

  form do |f|
    f.inputs "Category Title" do
      f.input :snap
      f.input :first_title
      f.input :last_title
      f.input :sub_title
      f.input :description
      f.input :snap
    end
    f.actions
  end
end
