ActiveAdmin.register Product do
  permit_params :title, :price, :price, :color, :description, :snap

  index do

  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :title
      f.input :price
      f.input :color
      f.input :description
      f.input :snap
    end
    f.actions
  end

end
