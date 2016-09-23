class CreateTrends < ActiveRecord::Migration[5.0]
  def change
    create_table :trends do |t|
      t.string :snap
      t.string :first_title
      t.string :last_title
      t.string :sub_title
      t.text :description

      t.timestamps
    end
  end
end
