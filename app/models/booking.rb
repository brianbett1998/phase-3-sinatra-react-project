class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :car

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true

  enum booking_status: { pending: 0, confirmed: 1, cancelled: 2 }
end
