class PaymentsController < ApplicationController
  before_action :set_cart
  layout "Paiement", only: [ :new ]

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @cart.total_cents.to_i, # or amount_pennies
      description:  "Paiement du panier #{@cart.id}",
      currency:     @cart.currency
    )

    #@order.update(payment: charge.to_json, state: 'paid')
    @cart.update(status: 'paid')
    redirect_to pills_path(paid: "yes")

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to :back
end

private

  def set_cart
    @cart = Cart.find(session[:cart_id])
    @cart.user = current_user
  end
end

