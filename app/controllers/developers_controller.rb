class DevelopersController < ApplicationController

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

    # Never trust parameters from the scary internet, only allow the white list through.
    def developer_params
      params.require(:developer).permit(:name, :country, :listed)
    end

end
