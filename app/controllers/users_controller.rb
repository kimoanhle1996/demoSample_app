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
      flash[:danger] = t "does"
      redirect_to signup_path
    else
      redirect_to root_url
    end
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = t "welcome"
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    if @user.blank?
      flash[:danger] = t "does"
      redirect_to signup_path
    else
      @user
    end
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = t "profile"
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    if @user.destroy
      flash[:success] = t "deleted"
      redirect_to users_path
    else
      flash[:danger] = t "no"
      redirect_to users
    end
  end

  private

  def load_user
    @user = User.find_by id: params[:id]
    return if @user
    redirect_to signup_path
  end

  def user_params
    params.require(:user).permit :name, :email, :password,
      :password_confirmation
  end
end
