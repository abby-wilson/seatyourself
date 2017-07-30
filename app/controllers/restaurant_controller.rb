class RestaurantController < ApplicationController

  def homepage
    render :homepage
  end

  def index
      @restaurants = Restaurant.all
    end

   def show
      @restaurants = Restaurant.find(params[:id])
    end

    def new
      @restaurants = Restaurant.new

      if @restaurants.save
      flash.now[:notice] = 'Account successfully created!'
      redirect_to profile_path
      else
      flash.now[:error] = 'Sorry, try again!'
      render :new
      end
    end

    def create
      @restaurants = Restaurant.new
    end


    def update
      @user.user_id = params[:user][:id]
      # @user.restaurant_id [:restaurant][:id]
    end

    def destroy
    end

end
