class UsersController < ApplicationController
  def new
    @order = current_order
    @order_items = current_order.order_items
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.order_id = current_order.id
    @user.save
    redirect_to '/payments/new'
  end

  private

  def user_params
    params.require(:user).permit!
  end
end
