class User < ActiveRecord::Base
    has_many :cars
    has_many :bookings
    has_many :reviews 
end