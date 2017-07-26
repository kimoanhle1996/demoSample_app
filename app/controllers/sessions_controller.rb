class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      check_actived
    else
      flash.now[:danger] = I18n.t "invalid"
      render :new
    end
  end

  def check_actived
    if user.activated?
      log_in user
      params[:session][:remember_me] == Settings.remember ? remember(user) : forget(user)
      redirect_back_or user
    else
      message = t "accountno "
      flash[:warning] = message
      redirect_to root_url
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
