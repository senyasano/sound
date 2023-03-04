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
    p @review
    redirect_to root_path
  end


  def update
    # 第二期作成
  end

  def destroy
    # 第二期作成
  end

  private
  def review_params
    params.require(:review).permit(:people, :borrowed_goods, :usage_fee, :body)
  end

end
