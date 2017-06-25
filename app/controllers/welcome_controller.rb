class WelcomeController < ApplicationController
  def index
    @order = current_order
    @category = Category.first(3)
    @products_with_categories = []
    @category.each do |category|
      @products_with_categories << { category => Product.where(category_id: category.id).first(12)}
    end
    @order_item = current_order.order_items.new
  end

  def about
    @order = current_order
  end
end
