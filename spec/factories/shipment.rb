FactoryGirl.define do
  factory :shipment do
    association :warehouse, factory: :warehouse
    association :order, factory: :order
    state 'pending'
  end
end

