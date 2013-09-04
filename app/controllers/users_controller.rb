class UsersController < ApplicationController
  load_and_authorize_resource
  
  def new
  end

  def create
    if @user.save
      flash[:success] = "User Sucessfully Created: #{@user.email}"
      redirect_to admin_path
    else
      flash[:error] = "User not created"
      render 'new'
    end
  end 

  def show    
  end

  def edit  
  end

  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated: #{@user.email}"
      redirect_to admin_path
    else
      flash[:notice] = "User not updated"
      render 'edit'
    end
  end

  def index
    @users = User.all
  end
end
