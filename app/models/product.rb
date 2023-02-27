class Product < ActiveRecord::Base

    has_many :reviews
    has_many :users, through: :reviews

    def post_review(user,star_rating,comment)
        rev = Review.create(user: user,star_rating: star_rating,comment: comment,product: self)
        reviews << rev
    end

    def printall_reviews
        reviews.each do |rev|
            puts "Review for #{name} by #{review.user.name}: #{review.star_rating}.#{review.comment}"
        end
    end

    def avg_rating
        sum = 0.0
        count = 0

        reviews.each do |rev|
            sum += rev.star_rating
            count += 1
        end

        (sum / count).to_float
    end
end