class MenuItemsController < ApplicationController
  def index
    if params[:is_bulk]
      @menu_items = MenuItem.where(is_bulk: true)
    end
  end
end
