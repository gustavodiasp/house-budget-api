class User < ApplicationRecord
  has_many :user_groups, dependent: :destroy
  has_many :groups, through: :user_groups
end
