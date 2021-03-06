class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user = User.update(user_params)
    redirect_to user_path(@path)
  end

  def destroy
    @user = User.find(params[:id])
    @user = User.destroy
    redirect_to users_path
  end

  private

    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end

end
