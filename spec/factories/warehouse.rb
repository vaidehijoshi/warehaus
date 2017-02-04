FactoryGirl.define do
  factory :warehouse do
    city 'Brooklyn'
    state  'NY'
    zipcode '11238'
    country 'United States'

    factory :warehouse_with_inventory do
      city 'Los Angeles'
      state  'LA'
      zipcode '90001'
      country 'United States'
    end
  end
end