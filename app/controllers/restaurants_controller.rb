class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:edit, :show, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    # params is pulling hte ID from the url
  end

  def new
    # this page is for the form ()
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    # if save redirect_to
    redirect_to restaurant_path(@restaurant)
    # else give the form back again ->new.html.erb
    # render :new, status: :unprocessable_entity
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    # if update
    redirect_to restaurant_path(@restaurant)
    # else
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end

  private

  # strong_params -> white-listing the attributes a user can give me for security reasons
  def restaurant_params
    # only permitting the field of name, rating and address
    params.require(:restaurant).permit(:name, :rating, :address)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
