class RemoveUserIdFromRestaurants < ActiveRecord::Migration
  def up
    remove_column :restaurants, :user_id
  end

  def down
    add_column :restaurants, :user_id, :integer
  end
end
