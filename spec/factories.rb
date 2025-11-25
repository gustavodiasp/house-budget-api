# frozen_string_literal: true

FactoryBot.define do
  factory :financial_event do
    amount { 10.20 }
    description { "Some financial event" }
    occurred_at { DateTime.new(2025, 11, 1) }
    transaction_type { "household expenses" }
    created_by { "user01@gmail.com" }
    created_at { Time.current }
    updated_at { Time.current }
    household
  end

  factory :household_user do
    user
    household
  end

  factory :household do
    main_user { "user01@gmail.com" }
    name { "Gustavo" }
    created_at { Time.current }
    updated_at { Time.current }
  end

  factory :user do
    email { "user01@gmail.com" }
    name { "User 01" }
    created_at { Time.current }
    updated_at { Time.current }
  end
end
