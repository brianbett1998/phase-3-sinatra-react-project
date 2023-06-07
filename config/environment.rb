# This is an _environment variable_ that is used by some of the Rake tasks to determine
# if our application is running locally in development, in a test environment, or in production
ENV['RACK_ENV'] ||= "development"

# Require in Gems
require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])

# Require in all files in 'app' directory
require_all 'app/models'

require 'sinatra/base'
require 'json'
require_relative 'controllers/car_controller.rb'
require_relative 'controllers/booking_controller.rb'
require_relative 'controllers/user_controller.rb'
require_relative 'controllers/review_controller.rb'

class MyApp < Sinatra::Base
  # Cars routes
  use CarController

  # Bookings routes
  use BookingController

  # Users routes
  use UserController

  # Reviews routes
  use ReviewController

  # Root route
  get '/' do
    { message: "Welcome to my application!" }.to_json
  end

  # Run the application
  run! if app_file == $0
end
