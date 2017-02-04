# Some seed data to get your warehaus started!
# Just run `rake db:seed` to populate your database.

mattress = Product.create!(name: 'Mattress')

white_queen = Variant.create!(product: mattress, color: 'white', size: 'queen')
grey_twin = Variant.create!(product: mattress, color: 'grey', size: 'twin')

warehouses = Warehouse.create!([
	{ 
		city: 'New York City', 
		state: 'New York',
		zipcode: '10001',
		country: 'United States of America'
	}, 
	{ 
		city: 'Los Angeles', 
		state: 'California',
		zipcode: '90001',
		country: 'United States of America'
	}
])

la_warehouse = Warehouse.find_by(city: 'Los Angeles')
nyc_warehouse = Warehouse.find_by(city: 'New York City')

10.times do 
	InventoryItem.create!(warehouse: la_warehouse, variant: grey_twin)
	InventoryItem.create!(warehouse: la_warehouse, variant: white_queen)
end

5.times do
	InventoryItem.create!(warehouse: nyc_warehouse, variant: white_queen)
end
