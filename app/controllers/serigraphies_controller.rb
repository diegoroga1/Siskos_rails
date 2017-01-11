class SerigraphiesController < ApplicationController
	def home_serigraphy	
		@product=Product.new
	
		
	end
	private
		def product_params
			params.require(:product).permit(:amount,serigraphy_attributes: [:color,:number_of_colors,:observations,:width,:heigth,:image,:place],shirt_attributes:[:size,:type])
		end
end
