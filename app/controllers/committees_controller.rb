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
    if @committee.update_attributes(params[:event])
      flash[:notice] = "Committee Updated"
      redirect_to @committee
    else  
      flash[:notice] = "Committee NOT Updated"
      render 'edit'
    end
  end

  def index
    @committees = Committee.all
  end

private
  def find_page
    @committee = Committee.find_by_slug(params[:id])
  end
end
