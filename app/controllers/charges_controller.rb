# class ChargesController < ApplicationController

# Stripe.api_key = ENV['SECRET_KEY']
# def new
# end

# def create
#   # Amount in cents
#   @amount = 150

#   customer = Stripe::Customer.create(
#     :email => params[:stripeEmail],
#     :source  => params[:stripeToken]
#   )

#   charge = Stripe::Charge.create(
#     :customer    => customer.id,
#     :amount      => @amount,
#     :description => 'Rails Stripe customer',
#     :currency    => 'usd'
#   )

# rescue Stripe::CardError => e
#   flash[:error] = e.message
#   redirect_to new_charge_path
# end

# end