class OrderItemsController < ApplicationController
  def create
    @order = current_order
    @order_item = @order.order_items.new(order_item_params)
    puts "---order_items create @order_items: #{@order_item.inspect}"
    respond_to do |format|
      if @order_item.save
        puts "---order_items create after save @order_items: #{@order_item.inspect}"
        session[:order_id] = @order.id
        format.html { redirect_to product_path(@order_item.product_id), notice: 'Order Item was successfully created.' }
      else
        format.html { redirect_to product_path(@order_item.product_id) }
        format.json { render json: @order_item.errors, status: :unprocessable_entity }
      end
    end
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
    params.require(:order_item).permit(:quantity, :product_id)
  end
end