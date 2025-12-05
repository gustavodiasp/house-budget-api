class Household < ApplicationRecord
  has_many :household_users
  has_many :users, through: :household_users
  has_many :financial_events

  validates :main_user, :name, presence: true
end
