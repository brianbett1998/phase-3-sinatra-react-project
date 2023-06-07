class Car < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def print_all_reviews
    self.reviews.each do |review|
      puts "Review for #{self.name} by #{review.user.name}: #{review.rating}. #{review.comment}"
    end
  end
end
