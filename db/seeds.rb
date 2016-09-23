puts "Seeding..."

print "Creating category..."
  Category.create(title: "Toy")
  Category.create(title: "Boy")
  Category.create(title: "Girl")
puts "done"


print "Creating product..."

Category.all.each do |category|
  3.times do
    product = category.products.create(
      title: Faker::Commerce.product_name,
      price: Faker::Commerce.price,
      size: "S M L XL XLL",
      color: "red white blue",
      description: Faker::Lorem.sentence,
      snap: "g".concat((1..9).to_a.sample.to_s).concat(".jpg")
    )
  end
end
puts "done"
