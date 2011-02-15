class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the MicroHood"
      redirect_to @user
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile update."
      redirect_to @user
    else
      @title = "Edit user"
      render 'edit'
      end
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
