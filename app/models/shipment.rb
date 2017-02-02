class Shipment < ActiveRecord::Base
	belongs_to :warehouse
	belongs_to :order

	has_many :variants
	has_many :products, through: :variants	

  validates :warehouse, :order, :state, presence: true
end
