class UsersController < ApplicationController
  def index

    #app/views/users/index.html.erb
  end

  def new
    @user = User.new
    #app/views/users/new.html.erb
  end

  def create
    #@user = User.new(name: user_params[:name], email: user_params[:email], password: user_params[:password])
    @user = User.new(params[:user])
    @user.save
    render :show

  end

  # private
  #   def user_params
  #     params.require(:user).permit(:name, :email, :password)
  #   end
end