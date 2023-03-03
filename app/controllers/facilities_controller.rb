class FacilitiesController < ApplicationController
  def new
    @facility = Facility.new
  end

  def create
    @facility = Facility.new(facility_params)
    
  end

  def index
  end

  def show
  end

  def update
  end

  def destroy
  end


  private
  def facility_params
    # 必要であればカラムを追記する
    params.rezuire(:facility).permit(:name, :body, :image)
  end
end
