# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shop do
    sequence(:name) { |i| "Shinjuku Nishiguchi #{i}" }
  end
end
