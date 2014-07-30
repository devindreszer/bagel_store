class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end

  def index
    @orders = Order.where(is_purchased: true, user_id: current_user.id)
  end

end
