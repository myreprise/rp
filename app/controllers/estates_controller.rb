class EstatesController < ApplicationController

	def index
		@city = City.find(params[:city_id])
		@estate = @city.estates
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
		city = City.find(params[:city_id])
		@estate = city.estates.find(params[:id])
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
		params.require(:estate).permit(:timeperiod, :new_constructed_residential, :secondary_residential, :re_investment_residential, :re_investment_commercial)
	end

end
