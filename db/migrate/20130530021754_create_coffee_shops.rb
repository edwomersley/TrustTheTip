class CreateCoffeeShops < ActiveRecord::Migration
  def change
    create_table :coffee_shops do |t|
      t.string :name
      t.string :location
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
