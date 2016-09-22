class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.float :price
      t.string :size
      t.string :color
      t.string :description
      t.string :snap

      t.timestamps
    end
  end
end
