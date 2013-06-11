class CreateTiplists < ActiveRecord::Migration
  def change
    create_table :tiplists do |t|
      t.string :name

      t.timestamps
    end
  end
end
