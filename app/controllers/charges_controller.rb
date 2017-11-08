class ChargesController < ApplicationController
  before_action :amount_to_be_charged
  before_action :set_description
  before_action :authenticate_user!

  def new
  end

  def create
    customer = StripeTool.create_customer(email: params[:stripeEmail], 
                                          stripe_token: params[:stripeToken])

    charge = StripeTool.create_charge(customer_id: customer.id, 
                                      amount: @amount,
                                      description: @description)

    @order = current_order
    @order.order_status_id = 2
    @order.save
    redirect_to thanks_path
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  def thanks
    @order = current_order
    if @order.order_status_id != 2
      redirect_to products
    else
      @order_items = @order.order_items
      session[:order_id] = nil;
    end
  end

  private

    def set_description
      @description = "Some amazing product"
    end

    def amount_to_be_charged
      @amount = 10000
    end
end