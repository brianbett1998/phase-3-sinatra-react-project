class Car < ActiveRecord::Base
    belongs_to :reviews
    has_many :users, through : :reviews

    def print_all_reviews
        self.reviews.each do |review|
          puts "Review for #{self.name} by #{review.user.name}: #{review.rating}. #{review.comment}"
        end
      end
    end
end