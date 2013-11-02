class Admin::CountiesController < Admin::AdminController
	def index 
		@counties = County.all
	end

	def edit
		@county = County.find( params[:id] )
	end

	def new
		@county = County.new
	end

	def create
		@county = County.new( params.require("county").permit(:name, :code, :cnpj) )
		if @county.save
			redirect_to admin_counties_path, notice: "salvo com sucesso"
		else
			render action: :new
		end
	end

	def update
		@county = County.find( params[:id] ) 
		if @county.update( params.require("county").permit(:name, :code, :cnpj) )
			redirect_to admin_counties_path, notice: "atualizado com sucesso"
		else
			render action: :edit
		end
	end	

	def show
		@county = County.find( params[:id] )
	end

	def destroy
		@county = County.find( params[:id] ) 
		@county.destroy
		redirect_to admin_counties_path, notice: "removido com sucesso"
	end
end
