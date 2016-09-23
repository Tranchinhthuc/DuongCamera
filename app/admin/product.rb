ActiveAdmin.register Product do
  permit_params :title, :price, :price, :color, :description, :snap, category_ids: []

  controller do
    def scoped_collection
      Product.preload(:categories, :category_products)
    end
  end

  index do
    selectable_column
    id_column
    column :title
    column :price
    column :price
    column :color
    column :snap do |product|
      image_tag product.snap.thumb.url
    end
    column :category do |product|
      product.categories.map(&:title).join(", ")
    end
    actions
  end

  show do
    attributes_table do
      row :title
      row :price
      row :price
      row :color
      row :snap do |product|
        image_tag product.snap.thumb.url
      end
      row :category do |product|
        product.categories.map(&:title)
      end
    end
  end

  form do |f|
    f.inputs "Admin Product" do
      f.input :title
      f.input :price
      f.input :color
      f.input :description
      f.input :snap
      f.input :categories, as: :check_boxes, collection: Category.all
    end
    f.actions
  end
end
