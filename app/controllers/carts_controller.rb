class CartsController < ApplicationController
  def update
    string_delivery_time = Date.today.to_s + " " + params[:cart][:delivery_time]
    @cart = Cart.find(params[:id])
    @cart.delivery_time = Time.zone.parse(string_delivery_time).to_datetime
    @cart.save
    redirect_to pills_path
  end

  private

  def cart_params
    # params.require(:cart).permit(:delivery_time)
  end
end
