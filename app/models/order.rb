class Order < ActiveRecord::Base
	validates :amount, :billing_address, :shipping_address, presence: true

	has_many :shipments
	
	has_many :line_items
	has_many :variants, through: :line_items
	has_many :products, through: :variants
end
