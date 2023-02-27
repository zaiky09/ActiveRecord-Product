puts "🌱 Seeding data..."

5.times do
    Product.create(
      name: Faker::Commerce.product_name
    )
end
4.times do
    User.create(
      name: Faker::Name.name
    )
end

20.times do
    Review.create(
      star_rating: rand(1..10),
      comment: Faker::Lorem.sentence(word_count: 10),
      product_id: Product.pluck(:id).sample,
      user_id: User.pluck(:id).sample
    )
  end

puts "🌱 Done seeding!"