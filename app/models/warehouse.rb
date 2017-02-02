class Warehouse < ActiveRecord::Base
	validates_presence_of :city, :state, :zipcode, :country

	has_many :shipments
	has_many :inventory_items
	has_many :products, through: :inventory_items
end
