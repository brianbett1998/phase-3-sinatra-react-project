class Booking < ActiveRecord::Base
    belongs_to :user
    belongs_to :car
  
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :total_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :booking_status, presence: true
  end
  