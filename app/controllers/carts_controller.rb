class CartsController < ApplicationController
  def new
    # @cart = Cart.new
  end

  def create
    # @cart = Cart.new(cart_params)
  end

  private

  def cart_params
    # params.require(:cart).permit(:delivery_time)
  end
end
