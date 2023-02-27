class Reviews < ActiveRecord::Migration[7.0]
  
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :star_rating null:false
      t.string :comment
      t.integer :product_id null:false
  end

end
