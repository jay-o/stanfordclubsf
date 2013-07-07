class CommitteesController < ApplicationController
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
  end

  def index
    @committees = Committee.all
  end

private
  def find_page
    @committee = Committee.find_by_slug(params[:id])
  end
end
