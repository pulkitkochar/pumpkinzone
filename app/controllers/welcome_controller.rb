class WelcomeController < ApplicationController
  def index
    @order = current_order
    @category = Category.where(id: [3,4,1]).order("id desc")
    @products_with_categories = []
    @category.each do |category|
      @products_with_categories << { category => Product.where(category_id: category.id).first(4)}
    end
    @order_item = current_order.order_items.new
  end

  def search
    @order = current_order
    @category = Category.first(3)
    @products_with_categories = []
    @category.each do |category|
      @products_with_categories <<
          { category => Product.where(category_id: category.id).where("name LIKE ?" , "%#{params[:search_keyword]}%").first(12)}
    end
    @order_item = current_order.order_items.new
    render :partial => 'product_categories'
  end

  def about
    @order = current_order
  end
end
