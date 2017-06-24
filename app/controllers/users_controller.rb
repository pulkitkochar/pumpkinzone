class UsersController < ApplicationController
  def new

  end

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
end
