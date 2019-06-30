class OperationsController < ApplicationController
	def show
		@operation = Operation.find(params['id'])
	end

	def index
		@operations = Operation.all
	end

	def new
		@operation = Operation.new
	end

	def create
		Operation.import(params[:operation][:file])

		flash[:notice] = "CNAB file uploaded successfully"
    redirect_to operations_path
	end
end