class User < ActiveRecord::Base
    has_many :reviews
    has_many :cars, through: :reviews
   
   
    def reviews
        Review.where(user_id: self.id)
    end

    def cars
        self.reviews.map do |review|
            review.car
        end
    end

    def favorite_car
        self.cars.max do |product|
            product.reviews.count
        end
    end

    def remove_reviews(car)
        self.reviews.each do |review|
            if review.car == car
                review.destroy
            end
        end
    end
end
