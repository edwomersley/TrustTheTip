class AddUserIdToCoffeeShops < ActiveRecord::Migration
  def change
    add_column :coffee_shops, :user_id, :integer
  end
end
