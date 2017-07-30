class UserController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new

    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.name = params[:user][:name]


    if @user.save
    flash.now[:notice] = 'Account successfully created!'
    redirect_to root_url
    else
    flash.now[:error] = 'Sorry, try again!'
    render :new
    end
  end

  def show

  #  @user = User.find_by(params[:user][:id])

 end

end
