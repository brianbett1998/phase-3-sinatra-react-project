class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Cars routes

  # Fetch cars
  get '/cars' do
    cars = Car.all
    cars.to_json(include: :reviews)
  end

  # New action
  get '/cars/new' do
    car = Car.new
    car.to_json
  end

  # Create action
  post '/cars' do
    car = Car.new(params[:car])
    car.save
    car.to_json
  end

  # Show action
  get '/cars/:id' do
    car = Car.find(params[:id])
    car.to_json
  end

  # Edit action
  get '/cars/:id/edit' do
    car = Car.find(params[:id])
    car.to_json
  end

  # Update action
  patch '/cars/:id' do
    car = Car.find(params[:id])
    car.update(params[:car])
    car.to_json
  end

  # Delete action
  delete '/cars/:id' do
    car = Car.find(params[:id])
    car.destroy
    car.to_json
  end

  # Reviews routes

  # Fetch reviews
  get '/reviews' do
    reviews = Review.all
    reviews.to_json
  end

  # New action
  get '/reviews/new' do
    review = Review.new
    review.to_json
  end

  # Create action
  post '/reviews' do
    review = Review.new(params[:review])
    review.save
    review.to_json
  end

  # Show action
  get '/reviews/:id' do
    review = Review.find(params[:id])
    review.to_json
  end

  # Edit action
  get '/reviews/:id/edit' do
    review = Review.find(params[:id])
    review.to_json
  end

  # Update action
  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(params[:review])
    review.to_json
  end

  # Delete action
  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

  # Users routes

  # Fetch users
  get '/users' do
    users = User.all
    users.to_json
  end

  # New action
  get '/users/new' do
    user = User.new
    user.to_json
  end

  # Create action
  post '/users' do
    user = User.new(params[:user])
    user.save
    user.to_json
  end

  # Show action
  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end

  # Edit action
  get '/users/:id/edit' do
    user = User.find(params[:id])
    user.to_json
  end

  # Update action
  patch '/users/:id' do
    user = User.find(params[:id])
    user.update(params[:user])
    user.to_json
  end

  # Delete action
  delete '/users/:id' do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

  # Root route
  get '/' do
    { message: "Welcome to my application!" }.to_json
  end
end
