class CreateFilmUsers < ActiveRecord::Migration
  def change
    create_table :film_users do |t|
      t.integer :user_id
      t.integer :film_id

      t.timestamps
    end
  end
end
