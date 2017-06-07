class DashboardsController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = current_user
    @current_cart_pending = current_user.carts.where(status: "pending")
    @current_cart_paid = current_user.carts.where(status: "paid")

  end
end

