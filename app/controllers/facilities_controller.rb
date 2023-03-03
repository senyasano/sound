class FacilitiesController < ApplicationController
  def new
    @facility = Facility.new
  end

  def create
    @facility = Facility.new(facility_params)
    @facility.user_id= current_user.id
    @facility.save
    redirect_to new_facility_comment_path(@facility.id)
  end

  def index
    @facilities = Facility.all
  end

  def show
    @facility = Facility.find(params[:id])
    @review = Review.new
  end

  def update
    # 第二期作成
  end

  def destroy
    # 第二期作成
  end


  private
  def facility_params
    # 必要であればカラムを追記する
    params.require(:facility).permit(:name, :body, :image, :address, :url)
  end
end
