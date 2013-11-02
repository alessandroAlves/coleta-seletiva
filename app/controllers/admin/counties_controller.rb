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
		@county.save
		redirect_to admin_counties_path, notice: "salvo com sucesso"
	end

	def update
		@couny = County.find( params[:id] ) 
		@couny.update( params.require("county").permit(:name, :code, :cnpj) )
		redirect_to admin_counties_path, notice: "atualizado com sucesso"
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
