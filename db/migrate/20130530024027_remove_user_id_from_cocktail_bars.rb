class RemoveUserIdFromCocktailBars < ActiveRecord::Migration
  def up
    remove_column :cocktail_bars, :user_id
  end

  def down
    add_column :cocktail_bars, :user_id, :integer
  end
end
