class Warehouse < ActiveRecord::Base
	validates_presence_of :city, :state, :zipcode, :country

	has_many :shipments
	has_many :inventory_items
	has_many :variants, through: :inventory_items

	scope :order_by_inventory_availablity, -> (variant_id) { 
		joins(:inventory_items).where("inventory_items.variant_id = ?", variant_id).uniq 
	}
end