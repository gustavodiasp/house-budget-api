class CreateFinancialEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :financial_events do |t|
      t.decimal :amount, precision: 15, scale: 2
      t.string :description
      t.datetime :occurred_at, null: false
      t.string :transaction_type, null: false
      t.string :created_by
      t.references :household, null: false, foreign_key: true
      t.timestamps
    end
  end
end
