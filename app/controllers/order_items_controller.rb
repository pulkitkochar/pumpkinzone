class OrderItemsController < ApplicationController
  def create
    @order = current_order
    @existing_item = @order.order_items.where(product_id: order_item_params[:product_id])
    if @existing_item.exists?
      @existing_item.first.update_attributes(quantity: @existing_item.first.quantity + order_item_params[:quantity].to_i)
    else
      @order_item = @order.order_items.new(order_item_params)
      @order.save
    end
    session[:order_id] = @order.id
    redirect_to :back
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

  def existing_item id
    @order.order_items.where(product_id: id)
  end

  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
