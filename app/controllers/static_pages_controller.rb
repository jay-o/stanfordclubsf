class StaticPagesController < ApplicationController
  def home
    # @upcoming_events = Event.where("start_date >= ?", Time.now.to_date ).where("event_state_id = 1").order("start_date")
    @upcoming_events = Event.where("start_date >= ?", Time.now.to_date ).order("start_date")
  end

  def about
  end

  def admin
    	@users = User.all
    	@events = Event.order("start_date")
    	@committees = Committee.all
    	authorize! :admin, :staticpage 
  end
end
