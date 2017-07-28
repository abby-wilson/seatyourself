class UserController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new

    @user.email = params[:users][:email]
    @user.password = params[:users][:password]


    if @user.save
    flash.now[:notice] = 'Account successfully created!'
    redirect_to root_url
    else
    flash.now[:error] = 'Sorry, try again!'
    render :new
    end
  end

end
