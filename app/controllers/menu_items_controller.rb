class MenuItemsController < ApplicationController
  def index
    if params[:is_bulk] == "true"
      @menu_items = MenuItem.where(is_bulk: true)
    else
      @menu_items = MenuItem.where(is_bulk: false)
    end
  end
end
