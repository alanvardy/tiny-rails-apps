# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end
end

def show; end

def edit; end

def update
  @user.update(user_params)
  if @user.save
    flash[:success] = 'User succesfully saved.'
    redirect_to new_user_path
  else
    flash[:danger] = 'Please enter valid information.'
    render :edit
end
end

private
def set_user
  @user = User.find(params[:id])
end

def user_params
  params.require(:user).permit(:username, :email, :password)
end
