class CreateHouseholdUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :household_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :household, null: false, foreign_key: true

      t.timestamps
    end

    add_index :household_users, [:user_id, :household_id], unique: true
  end
end
