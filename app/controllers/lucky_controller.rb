class LuckyController < ApplicationController
  def restaurant
    render json: Restaurant.sample
  end
end
