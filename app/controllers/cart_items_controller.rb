class CartItemsController < ApplicationController
  def create
    @pill = Pill.find(params[:pill_id])
    @current_cart = Cart.find(params[:cart_item][:cart_id])
    @cart = @current_cart
    @cart_item = current_item
    @cart_item.pill = @pill
    @cart_item.cart = @current_cart
    @cart_item.quantity += 1
    @cart_item.save

    respond_to do |format|
      format.html { redirect_to pills_path }
      format.js { render :update }
    end
  end

  def update
    @pill = Pill.find(params[:pill_id])
    @current_cart = Cart.find(params[:cart_item][:cart_id])
    @cart = @current_cart
    @cart_item = CartItem.find(params[:id])
    if @cart_item.quantity == 1
      @cart_item.destroy
    else
      @cart_item.quantity -= 1
      @cart_item.save
    end

    respond_to do |format|
      format.html { redirect_to pills_path }
      format.js
    end
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
