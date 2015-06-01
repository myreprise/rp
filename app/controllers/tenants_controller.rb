class TenantsController < ApplicationController
	def index
		@tenants = Tenant.all
	end

	def new
		@tenant = Tenant.new
	end

	def create
		@tenant = Tenant.new(tenant_params)
		if @tenant.save
	  		redirect_to(:action => 'index')
		else
			render ('new')
		end
	end

	def show
		@tenant = Tenant.find(params[:id])
	end


	def edit
		@tenant = Tenant.find(params[:id])
	end

	def update
		@tenant = Tenant.find(params[:id])
		if @tenant.update_attributes(tenant_params)
			redirect_to(:action => 'show', :id => @tenant.id)
		else
		  	render('index')
		end
	end

	def delete
		@tenant = Tenant.find(params[:id])
	end

	def destroy
	    @tenant.destroy
	    respond_to do |format|
	      format.html { redirect_to developers_url, notice: 'Tenant was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end

private

	def tenant_params
      params.require(:tenant).permit(:name, :country, :industry, :project_id, :image) 
	end

end
