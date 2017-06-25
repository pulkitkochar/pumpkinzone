class AdminController < ApplicationController
  def orders
    @orders = Order.all
  end

  def create
    @user = User.new(user_params)
    @user.order_id = current_order.id
    @user.save
    redirect_to '/payment/new'
  end

  private

  def user_params
    params.require(:user).permit!
  end
end
