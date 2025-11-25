class FinancialEvent < ApplicationRecord
  belongs_to :household

  validates :amount, :occurred_at, :transaction_type, :household, presence: true
end
