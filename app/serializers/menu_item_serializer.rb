include ActionView::Helpers::NumberHelper
class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :price, :description, :is_bulk

  def is_bulk
    "#{object.is_bulk}"
  end

  def price
    "#{number_to_currency(object.price)}"
  end
end
