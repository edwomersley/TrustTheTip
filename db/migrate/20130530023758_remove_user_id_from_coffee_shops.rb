class RemoveUserIdFromCoffeeShops < ActiveRecord::Migration
  def up
    remove_column :coffee_shops, :user_id
  end

  def down
    add_column :coffee_shops, :user_id, :integer
  end
end
