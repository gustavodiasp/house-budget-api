class CreateHouseholds < ActiveRecord::Migration[8.0]
  def change
    create_table :households do |t|
      t.string :main_user, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
