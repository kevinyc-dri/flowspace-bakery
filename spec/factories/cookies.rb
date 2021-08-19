# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :cookie, :class => 'Cookie' do
    association :storage, factory: :oven
    fillings "MyString"
  end
end
