class RealestatesController < ApplicationController

	def index
		@city = City.find(params[:city_id])
	end

	def new
		@city = City.find(params[:city_id])
		@redatum = @city.re_data.build
	end

	def create
		city = City.find(params[:city_id])
		@redatum = city.re_data.new(re_datum_params)
		if @redatum.save
			redirect_to @city, notice: 'Data added!'
		else
			render 'new', alert: 'Unable to add data!'
		end
	end

	def show
		city = City.find(params[:city_id])
		@redatum = city.re_data.find(params[:id])
	end

	def edit
		city = City.find(params[:city_id])
		@redatum = city.re_data.find(params[:id])
	end

	def update
		city = City.find(params[:city_id])
		@redatum = city.re_data.find(params[:id])

		if @redatum.update_attributes(params[:re_datum])
			redirect_to(:action => 'show', :id => @redatum.id)
		else
			render('index')
		end
	end


private

	def re_datum_params
		params.require(:re_datum).permit(:new_constructed_residential, :secondary_residential, :re_investment_residential, :re_investment_commercial)
	end

end
