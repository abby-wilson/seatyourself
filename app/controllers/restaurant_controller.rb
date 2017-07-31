class RestaurantController < ApplicationController

  def homepage
    render :homepage
  end

  def index
      @restaurants = Restaurant.all
  end

   def show
      @restaurants = Restaurant.find(params[:id])

      # if current_user == @restaurants.user_id
      #   render :show_owner
      # elsif current_user.allowed?
      #   render :show_owner
      # else
      #   redirect_to showrestaurant_path
      # end

    end

    def new
      @restaurants = Restaurant.new
    end

    def create
      @restaurants = Restaurant.new

      @restaurants.name = params[:restaurant][:name]
      @restaurants.street_address = params[:restaurant][:street_address]
      @restaurants.neighbourhood = params[:restaurant][:neighbourhood]
      @restaurants.menu = params[:restaurant][:menu]
      @restaurants.summary = params[:restaurant][:summary]
      @restaurants.price_range = params[:restaurant][:price_range]
      @restaurants.opening_time = params[:restaurant][:opening_time]
      @restaurants.closing_time = params[:restaurant][:closing_time]
      @restaurants.max_capacity = params[:restaurant][:max_capacity]
      @restaurants.photo = params[:restaurant][:photo]

      if @restaurants.save
      flash.now[:notice] = 'Restaurant successfully created!'
      redirect_to restaurants_path
      else
      flash.now[:error] = 'Sorry, try again!'
      render :new
      end
    end


    def update
      @user.user_id = params[:user][:id]
    end

      # @user.restaurant_id [:restaurant][:id]

    def destroy
    end

end
