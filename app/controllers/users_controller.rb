class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find_by id: params[:id]
    if @user.blank?
      flash[:danger] = I18n.t"does"
      redirect_to signup_path
    else
      @user
    end
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = I18n.t"welcome"
      redirect_to @user
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :password,
      :password_confirmation
  end
end
