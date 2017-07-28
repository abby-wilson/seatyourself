class Restaurant < ApplicationRecord

has_many :available_times
has_many :bookings
has_many :users, through: :bookings

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurants = Restaurant.find(params[:id])
  end

end
