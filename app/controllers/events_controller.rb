class EventsController < ApplicationController
  authorize_resource
  before_filter :find_page

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      flash[:notice] = "Event Sucessfully Created: #{@event.name}"
      redirect_to @event
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @event.update_attributes(params[:event])
      flash[:success] = "Event Updated"
      redirect_to @event
    else  
      flash[:error] = "Event Not Updated"
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
