class CartsController < ApplicationController
  def update
    string_delivery_time = Date.today.to_s + " " + params[:cart][:delivery_time]
    @cart = Cart.find(params[:id])
    @cart.delivery_time = DateTime.strptime(string_delivery_time, '%Y-%m-%d %H:%M')
    @cart.save
    redirect_to pills_path
  end

  private

  def cart_params
    # params.require(:cart).permit(:delivery_time)
  end
end
