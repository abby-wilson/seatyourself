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
end

def create
end


def update
end

def destroy
end


end
