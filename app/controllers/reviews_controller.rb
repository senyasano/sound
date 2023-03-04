class ReviewsController < ApplicationController
  def new
    @facility = Facility.find(params[:facility_id])
  end

  def create
  end


  def update
  end

  def destroy
  end
  
end
