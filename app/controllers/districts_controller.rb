class DistrictsController < ApplicationController
	before_action :load_city

	def index
		city = City.find(params[:city_id])
		@districts = city.districts
	end

	def show
		city = City.find(params[:city_id])
		@district = city.districts.find(params[:id])
	end

	def new
		city = City.find(params[:city_id])
		@district = city.districts.build
	end

	def create
		city = City.find(params[:city_id])
		@district = city.districts.new(district_params)
		if @district.save
			redirect_to @city, notice: 'District added!'
		else
			render 'new', alert: 'Unable to add district!'
		end
	end


	def edit
		city = City.find(params[:city_id])
		@district = city.districts.find(params[:id])
	end

	def update
		city = City.find(params[:city_id])
		@district = city.districts.find(params[:id])

		if @district.update_attributes(params[:district])
			redirect_to(:action => 'show', :id => @district.id)
		else
			render('index')
		end
	end

	def destroy
		city = City.find(params[:id])
		@district = city.districts.find(params[:id])
		@district.destroy
		redirect_to(:action => 'index')
	end

private
	
	def load_city
		@city = City.find(params[:city_id])
	end

	def district_params
		params.require(:district).permit(:name, :city_id, :population)
	end
end
