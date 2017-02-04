class LineItem < ActiveRecord::Base
	belongs_to :order
	belongs_to :variant

	has_one :product, through: :variant
end
