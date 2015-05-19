class ProjectsController < ApplicationController
  #before_action :set_project, only: [:show, :edit, :update, :destroy]

	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
		@city = City.where(city_id: @project.city_id)
		gon.project = @project
		@other_projects = Project.where(district_id: @project.district_id).find_each
	end

	def new
		@project = Project.new
	end

	def create
	  	@project = Project.new(project_params)
	  	if @project.save
	  		redirect_to(:action => 'index')
	  	else
	  		render ('new')
	  	end
	end

	def edit
		@project = Project.find(params[:id])
	end
  
	def update
		@project = Project.find(params[:id])
		if @project.update_attributes(project_params)
			redirect_to(:action => 'show', :id => @project.id)
		else
		  	render('index')
		end
	end

	def delete
		@project = Project.find(params[:id])
	end

	def destroy
		Project.find(params[:id]).destroy
		redirect_to(:action => 'index')
	end

private
  def project_params
    params.require(:project).permit(:name, :city_id, :developer_id, :address, :turnover, :parking, :tenants, :district_id, :gfa, :longitude, :lattitude)
  end
  
end
