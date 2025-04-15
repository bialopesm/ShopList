class WelcomeController < ApplicationController
  def index
    @products = Product.all
  end

  def add_to_cart
    session[:cart] ||= []
    session[:cart] << params[:product_id]
    redirect_to root_path
  end

  def remove_from_cart
    session[:cart] ||= []
    session[:cart].delete(params[:product_id])
    redirect_to root_path
  end
end
