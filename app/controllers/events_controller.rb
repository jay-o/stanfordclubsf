class EventsController < ApplicationController
  authorize_resource
  before_filter :find_page

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
    @events = Event.all
  end

private
  def find_page
    @event = Event.find_by_slug(params[:id])
  end
end
