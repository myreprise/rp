class EstatesController < ApplicationController

	def index
		@city = City.find(params[:city_id])
		@estates = @city.estates.order('timeperiod DESC')
	end

	def new
		@city = City.find(params[:city_id])
		@estate = @city.estates.build
	end

	def create
		@city = City.find(params[:city_id])
		@estate = @city.estates.new(estate_params)
		if @estate.save
			redirect_to @city, notice: 'Data added!'
		else
			render 'new', alert: 'Unable to add data!'
		end
	end

	def show
		@city = City.find(params[:city_id])
		@estate = @city.estates.find(params[:id])
	end

	def edit
		@city = City.find(params[:city_id])
		@estate = @city.estates.find(params[:id])
	end

	def update
		@city = City.find(params[:city_id])
		@estate = @city.estates.find(params[:id])
		if @estate.update_attributes(estate_params)
			redirect_to(:action => 'show', :id => @estate.id)
		else
			render('index')
		end
	end

private

	def estate_params
		params.require(:estate).permit(:timeperiod, :new_constructed_residential, :secondary_residential, :re_investment_residential, :re_investment_commercial, :floor_space_started_residential, :floor_space_started_commercial, :floor_space_under_construction_residential, :floor_space_under_construction_commercial, :floor_space_completed_residential, :floor_space_completed_commercial, :floor_space_sold_residential, :floor_space_sold_commercial, :building_sold_residential, :building_sold_commercial)
	end

end
