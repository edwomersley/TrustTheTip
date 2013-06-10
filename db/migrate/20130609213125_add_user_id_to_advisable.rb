class AddUserIdToAdvisable < ActiveRecord::Migration
  def change
    add_column :advisables, :user_id, :integer
  end
end
