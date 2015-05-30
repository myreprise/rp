class ProjectsController < ApplicationController
  #before_action :set_project, only: [:show, :edit, :update, :destroy]

	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
		gon.project = @project
		@other_projects = Project.where(district_id: @project.district_id).find_each
		@developer_projects = Project.where(developer_id: @project.developer_id).find_each
		@city_on_xian = Project.find(1)
		@city_on_zhengzhou = Project.find(2)
		@distance_xian = distance([@city_on_xian.longitude, @city_on_xian.lattitude], [@project.longitude, @project.lattitude])
		@distance_zhengzhou = distance([@city_on_zhengzhou.longitude, @city_on_zhengzhou.lattitude], [@project.longitude, @project.lattitude])
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

	def distance(taubman, other_project)
		radius = 6371000
		latRad1 = taubman[1] * Math::PI/180
		latRad2 = other_project[1] * Math::PI/180
		deltaLat = (other_project[1] - taubman[1]) * Math::PI/180
		deltaLon = (other_project[0] - taubman[0]) * Math::PI/180

		a = Math.sin(deltaLat/2)*Math.sin(deltaLat/2) + Math.cos(latRad1)*Math.cos(latRad2)*Math.sin(deltaLon/2)*Math.sin(deltaLon/2)
		c = 2*Math.atan2(Math.sqrt(a), Math.sqrt(1-a))
		return ((radius * c)/1000).round(2)
	end


  def project_params
    params.require(:project).permit(:name, :city_id, :developer_id, :address, :opening_year, :image, :turnover, :parking, :tenants, :district_id, :gfa, :longitude, :lattitude)
  end
  
end
