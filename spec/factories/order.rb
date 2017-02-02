FactoryGirl.define do
  factory :order do
    amount 100.00
    billing_address '12345 a very fake address, new york, ny'
    shipping_address '12345 a very fake address, new york, ny'
  end
end
