class CommentsController < ApplicationController
  def new
    @facility = Facility.find(params[:facility_id])
    @review = Review.new
  end

  def create
  end


  def update
  end

  def destroy
  end
end
