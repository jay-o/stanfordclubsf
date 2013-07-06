class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def admin
    	@users = User.all
    	authorize! :admin, :staticpage 
  end
end
