class UsersController < ApplicationController
	load_and_authorize_resource
	
	def new
	end

	def create
		if @user.save
			flash[:notice] = "User Sucessfully Created: #{@user.email}"
			redirect_to admin_path
		else
			render 'new'
		end
	end	

	def show		
	end

	def edit	
	end

	def update
		if @user.update_attributes(params[:user])
      flash[:notice] = "Profile updated"
      redirect_to admin_path
    else
      render 'edit'
    end
	end

	def index
		@users = User.all
	end
end
