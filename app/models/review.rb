class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product

    def user
        User.find(self.user_id)
    end
    
    def car
        Car.find(self.car_id)
    end

    def print_review
        puts "Review for #{self.car.name} by #{self.user.name}: #{self.rating} . #{self.comment}"
    end
end
