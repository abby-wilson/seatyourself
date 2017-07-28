class RestaurantController < ApplicationController

  def index
      @restaurants = Restaurant.all
    end

   def show
      @restaurants = Restaurant.find(params[:id])
    end

def new
end

def create
end


def update
end

def destroy
end


end
