class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the MicroHood"
      redirect_to @user
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
