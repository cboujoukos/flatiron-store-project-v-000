class CartsController < ApplicationController
  def show
    @current_cart = Cart.find(params[:id])
  end

  def checkout
    @current_cart = Cart.find_by(id: params[:id])
    empty_cart(@current_cart)
    #binding.pry
    redirect_to cart_path(@current_cart)
  end
end
