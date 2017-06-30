class WelcomeController < ApplicationController
  def index
    @order = current_order
    @category = Category.where(id: [2,3,4])
    @products_with_categories = []
    @category.each do |category|
      @products_with_categories << { category => Product.where(category_id: category.id).first(4)}
    end
    @order_item = current_order.order_items.new
  end

  def search
    @products = Product.where("name LIKE ?" , "%#{params[:search_keyword]}%")
    @category_ids = @products.collect(&:category_id).uniq
    @categories = Category.where(id: @category_ids)
    result = []
    @categories.each do |cat|
      products = @products.select{|product| product.category_id = cat.id}.first(2)
      result << {name: cat.name, children: products.map(&:as_json)}
    end
    render json: {items: result}
  end

  def about
    @order = current_order
  end
end
