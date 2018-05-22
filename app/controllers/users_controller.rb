class UsersController < ApplicationController
  def new
  end
  
  def index
    @users = User.all
  end
  
  def create
    User.create(name: params[:name],
                email: params[:email],
                password: params[:password],
                password_confirmation: params[:password_confirmation])
    redirect_to :root
  end
end
