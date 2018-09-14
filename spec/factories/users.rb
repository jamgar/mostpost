FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "test#{n}" }
    sequence(:email) { |n| "test#{n}@test.com" }
    password { '1234567890' }
    password_confirmation { '1234567890' }
  end
end
