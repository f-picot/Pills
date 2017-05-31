class PillsController < ApplicationController
  def index
    @pills = Pill.all
    @cart = current_cart
    @cart_item = CartItem.new
  end

  private

  def current_cart
    if session[:cart_id]
      @current_cart ||= Cart.find(session[:cart_id])
    else
      @current_cart = Cart.create!
      session[:cart_id] = @current_cart.id
    end
    @current_cart
  end
end
