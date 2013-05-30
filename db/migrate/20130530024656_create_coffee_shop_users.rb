class CreateCoffeeShopUsers < ActiveRecord::Migration
  def change
    create_table :coffee_shop_users do |t|
      t.integer :user_id
      t.integer :coffee_shop_id

      t.timestamps
    end
  end
end
