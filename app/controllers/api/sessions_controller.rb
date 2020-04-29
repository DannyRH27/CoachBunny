class Api::SessionsController < ApplicationController

  before_action :require_logged_in, only: [:destroy]

  def create
    @user = User.find_by_credentials(
      params[:user][:email_address],
      params[:user][:password])
    if @user
      log_in(@user)
      render "/api/users/show"
    else
      render json: ["Invalid username or password"], status: 401
    end
  end

  def destroy
    @user = current_user
    if @user
      log_out
      render json: "/api/users/show"
    end
  end

end
