class DevelopersController < ApplicationController
  #before_action :set_developer, only: [:show, :edit, :update, :destroy]

	def index
		@developers = Developer.all
	end

	def new
		@developer = Developer.new
	end

	def create
	    @developer = Developer.new(developer_params)
	  	if @developer.save
	  		redirect_to(:action => 'index')
	  	else
	  		render ('new')
	  	end
	end

	def show
		@developer = Developer.find(params[:id])
		@projects = Project.where(developer_id: Developer.find(params[:id])).find_each
		@projects_total_gfa = Project.where( :developer_id => @developer.id ).sum :gfa
		gon.projects = @projects
		@articles = Article.where("title LIKE ?", "%#{@developer.name}%")
	end

	def edit
		@developer = Developer.find(params[:id])
	end

	def update
		@developer = Developer.find(params[:id])
		if @developer.update_attributes(developer_params)
			redirect_to(:action => 'show', :id => @developer.id)
		else
		  	render('index')
		end
	end


	def delete
		@developer = Developer.find(params[:id])
	end


	def destroy
	    @developer.destroy
	    respond_to do |format|
	      format.html { redirect_to developers_url, notice: 'Developer was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end


private
    def developer_params
      params.require(:developer).permit(:name, :country, :listed, :image)
    end

end
