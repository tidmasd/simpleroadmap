FactoryGirl.define do
  factory :user do
    name 'Dan'
    sequence(:email) { |n| "email#{n}@gmail.com" }
    password 'pw'
  end
end
