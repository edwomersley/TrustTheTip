class RemoveUserIdFromFilms < ActiveRecord::Migration
  def up
    remove_column :films, :user_id
  end

  def down
    add_column :films, :user_id, :integer
  end
end
