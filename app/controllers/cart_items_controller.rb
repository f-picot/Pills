class CartItemsController < ApplicationController
  def create
    @pill = Pill.find(params[:pill_id])
    @current_cart = Cart.find(params[:cart_item][:cart_id])
    @cart_item = current_item
    @cart_item.pill = @pill
    @cart_item.cart = @current_cart
    @cart_item.quantity += 1
    @cart_item.save
    redirect_to pills_path
  end

  def update
    @pill = Pill.find(params[:pill_id])
    @current_cart = Cart.find(params[:cart_item][:cart_id])
    @cart_item = CartItem.find(params[:id])
    if @cart_item.quantity == 1
      @cart_item.destroy
    else
      @cart_item.quantity -= 1
      @cart_item.save
    end
    redirect_to pills_path
  end

  private

  def current_item
    if @current_cart.cart_items.where(pill_id: params[:pill_id]).first
      @current_cart.cart_items.where(pill_id: params[:pill_id]).first
    else
      CartItem.new
    end
  end
end
