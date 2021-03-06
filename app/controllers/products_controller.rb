class ProductsController < ApplicationController
  def index
    @categories = Category.all
    @products_with_categories = []
    @categories.each do |category|
      @products_with_categories << { category => Product.where(category_id: category.id)}
    end
    @order = current_order
    @order_item = current_order.order_items.new
  end

  def show
    product = Product.find params[:id]
    redirect_to "/products#category_" + product.category.name.gsub(" ", "_")
  end
end
