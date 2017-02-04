FactoryGirl.define do
  factory :order do
    amount 100.00
    billing_address '12345 a very fake address, new york, ny'
    shipping_address '12345 a very fake address, new york, ny'
  
  	after(:create) do |order|
  		create(:line_item, order: order)
      create(:shipment, order: order)
    end
  end
end
