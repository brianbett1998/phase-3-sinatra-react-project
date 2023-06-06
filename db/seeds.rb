puts "🌱 Seeding spices..."

# Create users
User.create(name: "John Doe", email: "john@example.com", phone_number: "123456789")
User.create(name: "Jane Smith", email: "jane@example.com", phone_number: "987654321")
User.create(name: "Michael Johnson", email: "michael@example.com", phone_number: "555555555")

# Create cars
Car.create(make: "Toyota", model: "Corolla", year: 2021, color: "Blue", price: 50.00, user_id: 1)
Car.create(make: "Honda", model: "Civic", year: 2022, color: "Red", price: 60.00, user_id: 2)
Car.create(make: "Ford", model: "Mustang", year: 2020, color: "Black", price: 100.00, user_id: 3)

# Create bookings
Booking.create(start_date: DateTime.now + 1, end_date: DateTime.now + 7, total_price: 350, user_id: 1, car_id: 2)
Booking.create(start_date: DateTime.now + 2, end_date: DateTime.now + 4, total_price: 120, user_id: 2, car_id: 3)
Booking.create(start_date: DateTime.now + 3, end_date: DateTime.now + 5, total_price: 180, user_id: 3, car_id: 1)
Booking.create(start_date: DateTime.now + 5, end_date: DateTime.now + 10, total_price: 500, user_id: 1, car_id: 3)

# Create reviews
Review.create(rating: 4, comment: "Great car!", user_id: 1, car_id: 2)
Review.create(rating: 5, comment: "Excellent service!", user_id: 2, car_id: 3)
Review.create(rating: 3, comment: "Good experience overall", user_id: 3, car_id: 1)
Review.create(rating: 4, comment: "Smooth ride", user_id: 1, car_id: 3)


puts "✅ Done seeding!"
