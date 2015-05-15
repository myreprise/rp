class DistrictsController < ApplicationController

	def show
		@district = District.find(params[:id])
	end

private
	def district_params
		params.require(:district).permit(:name, :city_id, :population)
	end
end
