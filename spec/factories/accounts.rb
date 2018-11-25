FactoryGirl.define do
  factory :account do
    sequence(:subdomain) { |n| "subdomains#{n}" }
    association :owner, factory: :user
  end
end
