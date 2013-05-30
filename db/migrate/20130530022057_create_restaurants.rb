class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.integer :latitude
      t.integer :longitude
      t.integer :user_id

      t.timestamps
    end
  end
end
