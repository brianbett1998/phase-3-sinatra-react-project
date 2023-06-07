puts "🌱 Seeding spices..."

# Create users
User.create(name: "Brian Bett", email: "brian@example.com", phone_number: "567456789")
User.create(name: "John Doe", email: "john@example.com", phone_number: "123456789")
User.create(name: "Jane Smith", email: "jane@example.com", phone_number: "987654321")
User.create(name: "Michael Johnson", email: "michael@example.com", phone_number: "555555555")

# Create cars
Car.create(make: "Toyota", model: "Corolla", year: 2021, color: "Blue", price: 3500, user_id: 1)
Car.create(make: "Honda", model: "Civic", year: 2022, color: "Red", price: 3000, user_id: 2)
Car.create(make: "Ford", model: "Mustang", year: 2020, color: "Black", price: 10000, user_id: 3)
Car.create(make: "Dodge", model: "Hellcat", year: 2020, color: "Green", price: 10000, user_id: 4)
Car.create(make: "Lexus", model: "LS-570", year: 2020, color: "Black", price: 9000, user_id: 5)


# Create reviews
Review.create(rating: 4, comment: "Great car!", user_id: 1, car_id: 4)
Review.create(rating: 5, comment: "Excellent service!", user_id: 2, car_id: 3)
Review.create(rating: 3, comment: "Good experience overall", user_id: 5, car_id: 1)
Review.create(rating: 4, comment: "Smooth ride", user_id: 5, car_id: 3)


puts "✅ Done seeding!"
