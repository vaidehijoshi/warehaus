class InventoryItem < ActiveRecord::Base
	# Representation of which and how many variants
	# physically reside in a warehouse at any given time.
	belongs_to :variant
	belongs_to :warehouse
	belongs_to :order
	belongs_to :line_item

	validates :variant, :warehouse, presence: true
end
