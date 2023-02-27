class Review < ActiveRecord::Base

    belongs_to :users
    belongs_to :products

    def review_print
        puts "Review for #{product.name} by #{user.name}: #{star_rating}.#{comment}"
    end

end
