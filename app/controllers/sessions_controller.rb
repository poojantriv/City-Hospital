class SessionsController < ApplicationController
  skip_before_action :authorised, only: [:new, :create]

  def new
    redirect_to '/index' if !current_user.nil?
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])

      session[:user_id] = user.id

      #ward_id getting from sessions#new in radio
      session[:ward_id] = params[:ward]

      redirect_to '/index', notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end