class CommitteesController < ApplicationController
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
  end

  def index
    @committees = Committee.all
  end
end
