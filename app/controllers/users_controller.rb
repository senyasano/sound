class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
    if current_user.id != @user.id
      redirect_to edit_user_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      flash[:notice] = 'You have updated your nickname successfully'
      redirect_to facilities_path
    else
      render :edit
    end

  end

  private
  def user_params
    params.require(:user).permit(:name)
  end
end
