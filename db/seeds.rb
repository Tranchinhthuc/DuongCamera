# puts "Seeding..."
#
# print "Creating category..."
#   Category.create(title: "Toy")
#   Category.create(title: "Popular")
#   Category.create(title: "New")
# puts "done"
#
#
# print "Creating product..."
# Category.all.each do |category|
#   snap_url = "app/assets/images/g".concat((1..9).to_a.sample.to_s).concat(".jpg")
#   4.times do
#     product = category.products.create(
#       title: Faker::Commerce.product_name,
#       price: Faker::Commerce.price,
#       size: "S M L XL XLL",
#       color: "red white blue",
#       description: Faker::Lorem.paragraph(2),
#       snap: File.open(Rails.root + snap_url),
#       summary: Faker::Lorem.sentence
#     )
#   end
# end
# puts "done"
#
print "Creating trend..."
snap_url = "app/assets/images/t".concat((1..4).to_a.sample.to_s).concat(".png")
10.times do
  Trend.create(
    snap: File.open(Rails.root + snap_url),
    first_title: Faker::Name.title,
    last_title: Faker::Name.title,
    sub_title: Faker::Name.title,
    description: Faker::Lorem.paragraph(2)
  )
end
puts "done"
#
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
