class CreateRestaurantUsers < ActiveRecord::Migration
  def change
    create_table :restaurant_users do |t|
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
