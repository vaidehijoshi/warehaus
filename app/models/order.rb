class Order < ActiveRecord::Base
	validates :amount, :billing_address, :shipping_address, presence: true

	has_many :shipments
end
