json.extract! product, :id, :title, :price, :size, :color, :description, :created_at, :updated_at
json.url product_url(product, format: :json)