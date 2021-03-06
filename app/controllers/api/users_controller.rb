class Api::UsersController < ApplicationController 
  def create
    puts user_params
    @user = User.new(user_params)
    puts @user
    if @user.save
      log_in(@user)
      render '/api/users/show'
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :password, :email, :image_url, :zip_code) # :password_confirmation, :remember_me, :uid, :provider)
  end
end