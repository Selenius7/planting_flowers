class ChartsController < ApplicationController
  def index
    @order_data = Order.all
    @flower_data = Flower.all
  end
end
