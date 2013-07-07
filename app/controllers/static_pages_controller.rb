class StaticPagesController < ApplicationController
  def home
  	@events = Event.all
  end

  def about
  end

  def admin
    	@users = User.all
    	authorize! :admin, :staticpage 
  end
end
