class WelcomeController < ApplicationController
  def index
    @order = current_order
  end

  def about
  end
end
