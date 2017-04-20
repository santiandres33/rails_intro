class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    if params[:query].present?
      @restaurants = @restaurants.where("name LIKE :query", query: "%#{params[:query]}%")
    end
  end

  def show
  end

  def edit
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant = Restaurant.new(restaurants_params)
    restaurant.save
    redirect_to root_path
  end

  # safe params

  private

  def restaurants_params
    params.require(:restaurant).permit(:name, :food)
  end


end
