class Product < ActiveRecord::Base
	has_many :variants

	validates :name, presence: true
end
