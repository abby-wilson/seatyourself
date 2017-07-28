class UsersController < ApplicationController

  def new
    @user = Users.new
  end

  def create
    @user = Users.new

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
