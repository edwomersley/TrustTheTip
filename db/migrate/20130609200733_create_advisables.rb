class CreateAdvisables < ActiveRecord::Migration
  def change
    create_table :advisables do |t|
      t.string :name
      t.string :author
      t.string :location
      t.string :artist
      t.string :type

      t.timestamps
    end
  end
end
