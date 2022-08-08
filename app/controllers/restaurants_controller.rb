class RestaurantsController < ApplicationController
  before_action :set_restaurants, only: %i[index random]
  before_action :set_restaurant, only: %i[show update destroy]

  # GET /places/restaurants
  def index
    render json: @restaurants
  end

  # GET /places/restaurants/1
  def show
    render json: @restaurant
  end

  # POST /places/restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      render json: @restaurant, status: :created, location: @restaurant
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /places/restaurants/1
  def update
    if @restaurant.update(restaurant_params)
      render json: @restaurant
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /places/restaurants/1
  def destroy
    @restaurant.destroy
  end

  # GET /places/restaurants/random
  def random
    @restaurants
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_restaurants
    @restaurants = Restaurant.all
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def restaurant_params
    params.require(:restaurant).permit(:category)
  end
end
