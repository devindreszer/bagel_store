class OrderItemsController < ApplicationController
  before_action :set_order, only: [:create]

  def default_serializer_options
    { root: false }
  end

  respond_to :json, :html

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
    respond_with(@order_item)

    @menu_item = MenuItem.find(@order_item.menu_item_id)
  end

  def create
    @order_item = @order.order_items.new(order_item_params)
    @order_item.user_id = current_or_guest_user.id

    # calculate price
    @order_item.price = @order_item.menu_item.price
    @order_item.selections.each do |selection|
      if selection.is_selected && selection.option.is_addon
        @order_item.price += selection.option.ingredient.price
      end
    end
    @order_item.order.price += (@order_item.price * @order_item.quantity)
    @order_item.order.save
    if @order_item.save!
      redirect_to @order_item.order
    end
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    order = @order_item.order
    order.price -= (@order_item.price * @order_item.quantity)
    @order_item.destroy
    redirect_to order, alert: "You have removed the item."
  end

  private

  def order_item_params
    params.require(:order_item).permit(:menu_item_id, :quantity, selections_attributes: [:option_id, :is_selected])
  end

end
