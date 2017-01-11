class Product < ApplicationRecord
	has_one :serigraphy
	has_one :shirt
        has_one :pen
        has_one :cup
        has_one :lighter
	belongs_to :cart
	belongs_to :client
	accepts_nested_attributes_for :serigraphy
	accepts_nested_attributes_for :shirt
end
