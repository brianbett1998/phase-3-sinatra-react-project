require 'sinatra/base'
require 'json'
require_relative 'controllers/cars_controller'
require_relative 'controllers/bookings_controller'
require_relative 'controllers/users_controller'
require_relative 'controllers/reviews_controller'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Cars routes
  use CarsController

  # Bookings routes
  use BookingsController

  # Users routes
  use UsersController

  # Reviews routes
  use ReviewsController

  # Root route
  get '/' do
    { message: "Welcome to my application!" }.to_json
  end

  # Run the application
  run! if app_file == $0
end
