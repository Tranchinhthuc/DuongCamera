puts "Seeding..."

print "Creating category..."
  Category.create(title: "Toy")
  Category.create(title: "Boy")
  Category.create(title: "New")
puts "done"


print "Creating product..."

Category.all.each do |category|
  snap_url = "app/assets/images/g".concat((1..9).to_a.sample.to_s).concat(".jpg")
  4.times do
    product = category.products.create(
      title: Faker::Commerce.product_name,
      price: Faker::Commerce.price,
      size: "S M L XL XLL",
      color: "red white blue",
      description: Faker::Lorem.sentence,
      snap: File.open(Rails.root + snap_url)

    )
  end
end


puts "done"
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')