class UsersController < ApplicationController
	load_and_authorize_resource
	
	def new
	end

	def create
		if @user.save
			redirect_to admin_path, notice: "User Sucessfully Created: #{@user.email}"
		else
			render 'new'
		end
	end	

	def show		
	end

	def edit	
	end

	def update		
	end

	def index
		@users = User.all
	end
end
