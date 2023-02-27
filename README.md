# ActiveRecord-Product Review
Code challenge 2 - Week 3 

## Pre-Requisites
In order to use this repository you will need the following:

## Operating System 
(Windows 10+, Linux 3.8+, or MacOS X 10.7+)
RAM >= 4GB
Free Space >= 2GB

## Build
This application has been built with the following tools:

Ruby v2.7.+
SQlite3 v1.6
ActiveRecord v7.0.4
Rake v13.0.6
Sinatra-activerecord
Require_all
Faker
Pry

## Setup
You can setup this repository by following this manual

1. Clone the repository
      git clone https://github.com/otsembo/my-todos-sinatra.git

2. Ensure the ruby gems are setup in your machine
      bundle install

3. Perform any pending database migrations
      rake db:migrate

4. Run the application
      rake console
     
## Application
Using this application:

- call User.first.products and see a list of the
products for the first user in the database based on your seed data, and 
Review.first.user should return the user for the first review in the database.

- Review
  Review#print_review
  This should puts in the terminal a string formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}
 
- Product
  ### Product#leave_review(user, star_rating, comment)
    Takes a User (an instance of the User class), a star_rating (integer), and a comment (string) as arguments, and creates a new Review in the database associated with this Product and the User
  ### Product#print_all_reviews
    This should puts in the terminal a string representing each review for this product
    Each review should be formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}
  ### Product#average_rating
    Returns a float representing the average star rating for all reviews for this product

- User
  ### User#favorite_product
    Returns the product instance that has the highest star rating from this user
  ### User#remove_reviews(product)
    Takes a Product (an instance of the Product class) and removes all of this user's reviews for that product
    
## Models
Database schema definitions.

## Author
Zamil Mozamil Sheikh
