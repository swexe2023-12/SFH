class UsersController < ApplicationController
  def index
    #@users = User.all
  end

  def new
    @user = User.new
  end

  def create
    #p = BCrypt::Password.create(params[:user][:pass])
    #user = User.new(uid: params[:user][:uid], pass: p, age: params[:user][:age])
    @user = User.new(uid: params[:user][:uid], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation], age: params[:user][:age])
    #user.save
    #redirect_to users_path
    
    
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
    
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end
end
