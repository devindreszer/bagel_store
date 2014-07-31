class OrderItemsController < ApplicationController
  before_action :set_order, only: [:new, :create]

  def default_serializer_options
    { root: false }
  end

  respond_to :json, :html

  def new
    @order_item = OrderItem.new
    @order_item.menu_item_id = params[:menu_item_id]
    @order_item.set_initial_quantity
    @order_item.set_initial_selections
    @order_item.set_intitial_price

    respond_with(@order_item)
  end

  def create
    @order_item = @order.order_items.new(order_item_params)
    @order_item.user_id = current_or_guest_user.id
    @order_item.set_selections
    @order_item.calculate_price

    if @order_item.save!
      respond_with(@order_item)
    end
  end

  def edit
    @order_item = OrderItem.find(params[:id])
    respond_with(@order_item)
  end

  def update
    @order_item = OrderItem.find(params[:id])
    @order_item.reset_selections
    @order_item.update(order_item_params)
    @order_item.set_selections
    @order_item.calculate_price

    if @order_item.save!
      respond_with(@order_item)
    end
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    order = @order_item.order
    order.add_item_price(-(@order_item.price * @order_item.quantity))
    @order_item.destroy
    redirect_to order, alert: "You have removed the item."
  end

  private

  def order_item_params
    params.require(:order_item).permit(:menu_item_id, :quantity, selections_attributes: [:option_id, :is_selected])
  end

end
