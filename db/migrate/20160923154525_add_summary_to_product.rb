class AddSummaryToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :summary, :string
  end
end
