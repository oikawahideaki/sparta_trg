class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end
  def create
    @restaurant = new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end


  private

  def restaurant_params
      params.require(:restaurant).permit(
        :shop_name,
        :tel,
        :address,
        :hp
        )
  end



end

