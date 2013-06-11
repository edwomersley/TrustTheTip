class AddTiplistIdToAdvisable < ActiveRecord::Migration
  def change
    add_column :advisables, :tiplist_id, :integer
  end
end
