FactoryBot.define do
  factory :category do
    sequence(:name) { |n| "test#{n}" }
    sequence(:branch) { |n| "branch#{n}" }
  end
end