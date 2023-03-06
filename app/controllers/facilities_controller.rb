class FacilitiesController < ApplicationController
  def new
    @facility = Facility.new
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end

  def create
    @facility = Facility.new(facility_params)
    @facility.user_id= current_user.id
    if @facility.save
      flash[:notice] = 'You have registered new facility successfully.'
      redirect_to new_facility_review_path(@facility.id)
    else
      render :new
    end

  end

  def index
    @facilities = Facility.page(params[:page]).reverse_order.per(5)
  end

  def show
    @facility = Facility.find(params[:id])
    @reviews = Review.where(facility_id: params[:id]).page(params[:page]).reverse_order.per(5)
    @reviews_all = Review.where(facility_id: params[:id])
  end

  def edit
    # 第二期作成
  end

  def update
    # 第二期作成
  end

  def destroy
    # 第二期作成
  end


  private
  def facility_params
    params.require(:facility).permit(:name, :body, :image, :address, :url)
  end
end
