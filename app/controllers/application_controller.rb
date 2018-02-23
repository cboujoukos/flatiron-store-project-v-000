class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def find_or_create_current_cart
    if !current_user.current_cart
      current_cart = current_user.carts.create
      current_user.current_cart = current_cart
      current_user.save
    else
      current_cart = current_user.current_cart
    end
    current_cart
  end

  def empty_cart(current_cart)
    current_cart.update(status: "submitted")
    current_cart.line_items.each do |li|
      item = current_cart.items.find_by(id: li.item_id)
      item.inventory -= li.quantity
      item.save
    end
    current_user.current_cart = nil
    current_user.save
  end

end
