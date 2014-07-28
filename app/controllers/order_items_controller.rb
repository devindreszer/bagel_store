class OrderItemsController < ApplicationController


  def index
    @order_items = OrderItem.all
  end

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

  def create
    @order_item = OrderItem.new(order_item_params)
    if @order_item.save!
      redirect_to order_items_path
    end
  end

  private

  def order_item_params
    params.require(:order_item).permit(:menu_item_id, :quantity)
  end

end
