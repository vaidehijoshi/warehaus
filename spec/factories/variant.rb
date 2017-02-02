FactoryGirl.define do
  factory :variant do
    association :product, factory: :product
    color 'blue'
    size 'queen'
  end
end

