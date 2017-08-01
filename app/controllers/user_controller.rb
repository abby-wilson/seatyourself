class UserController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new

    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.name = params[:user][:name]
    @user.role = params[:user][:role]


    if @user.save
    flash.now[:notice] = 'Account successfully created!'
    redirect_to root_url
    else
    flash.now[:error] = 'Sorry, try again!'
    render :new
    end
  end

  def show
<<<<<<< HEAD

=======
    if current_user
      @booking_array = current_user.bookings.all
    else
      flash.now[:error] = "Nice try"
    end
    return @booking_array
>>>>>>> 92a1565c0cd9448ac60e07b15a7ae219dd72928b
  end

end
