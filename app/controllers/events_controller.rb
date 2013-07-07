class EventsController < ApplicationController
  load_and_authorize_resource

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
    if @event.update_attributes(params[:event])
      flash[:notice] = "Event Updated"
      redirect_to @event
    else  
      flash[:notice] = "Event NOT Updated"
      render 'edit'
    end
  end

  def index
  end
end
