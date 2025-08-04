class CreateFinancialEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :financial_events do |t|
      t.decimal :amount
      t.text :description
      t.datetime :occurred_at
      t.string :category
      t.string :transaction_type
      t.string :user_email
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
