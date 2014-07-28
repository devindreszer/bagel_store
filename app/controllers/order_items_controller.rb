class OrderItemsController < ApplicationController
  def new
    @order_item = OrderItem.new
    @order_item.menu_item_id = params[:menu_item_id]
    @menu_item = MenuItem.find(@order_item.menu_item_id)
  end
end
