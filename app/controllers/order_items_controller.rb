class OrderItemsController < ApplicationController
  def new
    @order_item = OrderItem.new
    @order_item.menu_item_id = params[:menu_item_id]
    @order_item.options = Option.where(menu_item_id: @order_item.menu_item_id)

    @order_item.selections.each do |selection|
      if selection.option.is_addon == true
        selection.is_selected = false
      else
        selection.is_selected = true
      end
    end

    @menu_item = MenuItem.find(@order_item.menu_item_id)
  end
end
