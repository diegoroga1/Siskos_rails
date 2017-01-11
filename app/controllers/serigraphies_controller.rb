class SerigraphiesController < ApplicationController
	def home_serigraphy	
		@product=Product.new	
	end
	def upload_to_cart
		@product=Product.new(product_params)
		
		@shirt=Shirt.find_by_id(find_id)
		@product.shirt_id=@shirt.id
		@product.total_prize=@shirt.prize*@product.amount

		if @product.save
			redirect_to '/cart'
			
		else
			render :home_serigraphy
		end
	end
	private
		def product_params
			params.require(:product).permit(:amount,:total_prize,:number_of_colors,:observations,:width,:heigth,:image,:place,:color,:size,:shirt_type)
		end
		def query_params
			params.require(:shirt).permit(:color,:size,:type)
		end
		def find_id
			Shirt.get_id_shirt(params[:shirt][:size],params[:shirt][:color],params[:shirt][:shirt_type])
		end
end
