class LineItemsController < ApplicationController
  def create #Add To Cart
    #binding.pry
    @current_cart = find_or_create_current_cart
    #binding.pry
    @current_cart.update(:status => "open")
    @current_cart.add_item(params[:item_id]).save
    redirect_to cart_path(@current_cart)
  end
end
