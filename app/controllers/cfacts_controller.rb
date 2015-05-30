class CfactsController < ApplicationController

	def index
		@city = City.find(params[:city_id])
		@city_facts = @city.cfacts
	end

	def new

	end

	def create

	end

	def edit
		@city = City.find(params[:city_id])
		@city_fact = @city.cfacts.find(params[:id])
	end

	def update
		@city = City.find(params[:city_id])
		@city_fact = @city.cfacts.new(cfact_params)
		if @city_fact.save
			redirect_to @city, notice: 'Data added!'
		else
			render 'new', alert: 'Unable to add data!'
		end
	end

	def show
		@city = City.find(params[:city_id])
		@city_fact = @city.cfacts.find(params[:id])
		@period = Timeline.where(id: @city_fact.timeline_id)
		@category = Category.where(id: @city_fact.category_id)


	end

	def delete

	end

	def destroy

	end

private

	def cfact_params
		params.require(:cfact).permit(:city_id, :category_id, :timeline_id, :value)
	end


end
