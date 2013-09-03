class StaticPagesController < ApplicationController
  def home
    # @upcoming_events = Event.where("start_date >= ?", Time.now.to_date ).where("event_state_id = 1").order("start_date")
    @upcoming_events = Event.where("start_date >= ?", Time.now.to_date ).where("event_state_id = 1").order("start_date")
    @committees = Committee.all
  end

  def admin
    	@users = User.all
    	@events = Event.where("start_date >= ?", Time.now.to_date ).order("event_state_id, start_date ")
    	@committees = Committee.all
    	authorize! :admin, :staticpage 
  end

  def leadership
    @leadership_team ||= YAML.load_file('app/content/leadership.yml')
  end
end
