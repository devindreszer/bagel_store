class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
    @neighborhoods = Neighborhood.all
  end

  def index
    @orders = Order.where(is_purchased: true, user_id: current_user.id)
  end

  def update
    @order = Order.find(params[:id])
    if @order.update!(order_params)
      redirect_to order_path
    end
  end

  private

  def order_params
    params.require(:order).permit(:neighborhood_id)
  end

end
