class Review < ActiveRecord::Base

    belongs_to :users
    belongs_to :products

    def review_print
        puts "#{product.name} reviewed by #{user.name}: #{star_rating}.#{comment}"
    end

end
