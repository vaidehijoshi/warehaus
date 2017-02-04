FactoryGirl.define do
  factory :line_item do
    association :order, factory: :order
    association :variant, factory: :variant
  end
end

