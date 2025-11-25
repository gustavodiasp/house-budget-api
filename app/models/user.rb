class User < ApplicationRecord
  has_many :household_users
  has_many :households, through: :household_users

  validates :email, :name, presence: true
end
