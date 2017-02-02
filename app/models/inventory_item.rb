class InventoryItem < ActiveRecord::Base
	# Representation of which/how many variants physically
	# reside in a warehouse at any given time.
	belongs_to :variant
	belongs_to :warehouse

	validates :variant, :warehouse, :quantity, presence: true
end
