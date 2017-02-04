class Shipment < ActiveRecord::Base
	belongs_to :warehouse
	belongs_to :order

	validates :order, :state, presence: true

	def assign_warehouse
		line_item_ids = order.line_items.map(&:variant_id).flatten

		Warehouse.order_by_inventory_availablity(line_item_ids.first)
	end
end
