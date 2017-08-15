class UsersController < ApplicationController
  before_action :logged_in_user, except: %i(new show create)
  before_action :correct_user, only: %i(edit update)
  before_action :admin_user, only: :destroy
  before_action :load_user, only: %i(edit show update)

  def new
    @user = User.new
  end

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    if @user.blank?
      flash[:danger] = I18n.t "does"
      redirect_to signup_path
    else
      @user
    end
  end

  def create
    @user = User.new user_params
    if @user.save
       @user.send_activation_email
       flash[:info] = I18n.t "welcome1."
       redirect_to root_url
    else
      render :new
    end
  end

  def edit
    if @user.blank?
      flash[:danger] = I18n.t "does"
      redirect_to signup_path
    else
      @user
    end
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = I18n.t "profile"
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = I18n.t "deleted"
    redirect_to users_url
  end

  private

  def load_user
    @user = User.find_by id: params[:id]
    return if @user
    redirect_to loggin_path
  end

  def user_params
    params.require(:user).permit :name, :email, :password,
      :password_confirmation
  end
end
