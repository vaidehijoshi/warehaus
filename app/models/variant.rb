class Variant < ActiveRecord::Base
	belongs_to :product

	validates :color, :size, presence: true
end
