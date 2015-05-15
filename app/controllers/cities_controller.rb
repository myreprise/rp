class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])

    @projects = Project.where(city_id: @city).find_each

    gon.projects = @projects

    @districts = District.where(city_id: @city).find_each

  end

  def new
    @city = City.new
  end

  def edit
    @city = City.find(params[:id])
  end

  def create
      @city = City.new(city_params)
      if @city.save
        redirect_to(:action => 'index')
      else
        render ('new')
      end
  end

  # PATCH/PUT /cities/1
  # PATCH/PUT /cities/1.json
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

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: 'City was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit(:name, :tier, :area, :rank, :longitude, :lattitude)
    end
end
