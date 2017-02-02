FactoryGirl.define do
  factory :inventory_item do
    association :warehouse, factory: :warehouse
    association :variant, factory: :variant
    quantity 50
  end
end