class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  def index
    @cities = City.all
  end

  def data
    respond_to do |format|
      format.json {
        render :json => [1,2,3,4,5]
      }
    end
  end

  def show
    @city = City.find(params[:id])
    @projects = Project.where(city_id: @city.id).find_each
    gon.projects = @projects
    @districts = @city.districts
    @estates = Estate.where(city_id: @city.id).order("timeperiod DESC")

    respond_to do |format|
      format.html
      format.json  { render :json => @projects}
    end

  end

  def new
    @city = City.new
    @districts = @city.districts
  end

  def edit
    @city = City.find(params[:id])
    @districts = @city.districts
  end

  def create
      @city = City.new(city_params)
      if @city.save
        redirect_to(:action => 'index')
      else
        render ('new')
      end
  end

  def update
    @city = City.find(params[:id])
    if @city.update_attributes(city_params)
      redirect_to(:action => 'show', :id => @city.id)
    else
        render('index')
    end
  end


  def delete

    @city = City.find(params[:id])

  end

  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: 'City was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_city
      @city = City.find(params[:id])
    end

    def city_params
      params.require(:city).permit(:name, :tier, :area, :rank, :longitude, :lattitude, :image)
    end
end
