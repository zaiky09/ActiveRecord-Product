class User < ActiveRecord::Base

    has_many :reviews
    has_many :products, through: :reviews

    def fav_product
        reviews.max_by {|rev| rev.star_rating}.product
    end

    def chuck_reviews(product)
        Review.where(product_id: product.id, user_id: self.id).destroy_all
    end

end