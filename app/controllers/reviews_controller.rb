class ReviewsController < ApplicationController
  def new
    @facility = Facility.find(params[:facility_id])
    @review = Review.new
  end

  def create
    facility = Facility.find(params[:facility_id])
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.facility_id = facility.id
    @review.save
    redirect_to facility_path(params[:facility_id])
  end


  def update
    # 第二期作成
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to facility_path(params[:facility_id])
  end

  private
  def review_params
    params.require(:review).permit(:people, :borrowed_goods, :usage_fee, :body)
  end

end
