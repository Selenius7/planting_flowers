class ChartsController < ApplicationController
  def index
    @order_data = Order.all
    @elevation_data = Elevation.all
  end
end
