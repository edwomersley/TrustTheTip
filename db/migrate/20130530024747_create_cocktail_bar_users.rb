class CreateCocktailBarUsers < ActiveRecord::Migration
  def change
    create_table :cocktail_bar_users do |t|
      t.integer :user_id
      t.integer :cocktail_bar_id

      t.timestamps
    end
  end
end
