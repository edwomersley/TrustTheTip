class CreateAdvisableUsers < ActiveRecord::Migration
  def change
    create_table :advisable_users do |t|
      t.integer :user_id
      t.integer :advisable_id
      t.string :advisable_type

      t.timestamps
    end
  end
end
