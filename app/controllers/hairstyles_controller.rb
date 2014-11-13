class HairstylesController < ApplicationController

	def new

	end

	def create
	  @hairstyle = Hairstyle.new(hairstyle_params)

	  binding.pry
	  @hairstyle.save

	  redirect_to @hairstyle
	end	

	def show
  	  @hairstyle = Hairstyle.find(params[:id])
	end

	private
	def hairstyle_params
	  params.require(:hairstyle).permit(:name, :price, :hair_type, :images)
	end



end
