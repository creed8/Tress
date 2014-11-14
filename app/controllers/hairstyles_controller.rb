class HairstylesController < ApplicationController

	def new

	end
	

	def index
	  @hairstyles = Hairstyle.all
	end

	def create
	  @hairstyle = Hairstyle.new(hairstyle_params)

	  @hairstyle.save

	  redirect_to @hairstyle
	end	

	def show
  	  @hairstyle = Hairstyle.find(params[:id])
	end

	def destroy
	  @hairstyle = Hairstyle.find(params[:id])
	  @hairstyle.destroy
 
  	  redirect_to hairstyles_path
	end

	private
	def hairstyle_params
	  params.require(:hairstyle).permit(:name, :price, :hair_type, :image)
	end



end
