FactoryGirl.define do
  factory :shipment do
    association :order, factory: :order
    state 'pending'
  end
end

