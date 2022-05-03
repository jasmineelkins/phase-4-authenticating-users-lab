class SessionsController < ApplicationController
  def create
    # log in user
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    render json: user
  end

  def destroy
    # log out user
    session.delete :user_id
    head :no_content
  end
end
