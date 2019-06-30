class CnabsController < ApplicationController
	def show
		@cnab = Cnab.find(params['id'])
	end

	def index
		@cnabs = Cnab.all
	end

	def new
		@cnab = Cnab.new
	end

	def create
		Cnab.import(params[:cnab][:file])

		flash[:notice] = "CNAB file uploaded successfully"
    redirect_to cnabs_path
	end
end