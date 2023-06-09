puts "🌱 Clearing existing data..."


puts "🌱 Seeding spices..."

# Create users
User.create(name: "Brian Bett", email: "brian@example.com", phone_number: "567456789")
User.create(name: "John Snow", email: "john@example.com", phone_number: "123456789")
User.create(name: "Lynn Tu", email: "jane@example.com", phone_number: "987654321")
User.create(name: "Michael Jordan", email: "michael@example.com", phone_number: "555555555")

# Create cars
50.times do
  Car.create(
    make: Faker::Vehicle.make,
    model: Faker::Vehicle.model,
    year: Faker::Vehicle.year,
    color: Faker::Vehicle.color,
    price: Faker::Commerce.price(range: 50000..500000),
    image_url: Faker::LoremPixel.image(size: "300x200", is_gray: false, category: "transport"),
    user_id: User.pluck(:id).sample
  )
end

# Create reviews
20.times do
  Review.create(
    rating: Faker::Number.between(from: 1, to: 5),
    comment: Faker::Lorem.sentence,
    user_id: User.pluck(:id).sample,
    car_id: Car.pluck(:id).sample
  )
end

puts "✅ Done seeding!"
