class OrderItemsController < ApplicationController


  def create
    @order = current_order
    @order_item = @order.order_items.new(order_item_params)
    @order.order_status_id = 1
    respond_to do |format|
      if @order.save
        format.html {redirect_to @order_item.product, notice: 'Product is successfully added to cart.'}
        format.json { render :show, status: :created, location: @order_item.product }
      end
    end
    session[:order_id] = @order.id
  end


  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end
private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id, :unit_price)
  end
end