include ActionView::Helpers::NumberHelper
class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :price, :description, :is_bulk, :is_bulk_string

  def is_bulk_string
    "#{object.is_bulk}"
  end

  def price
    "#{number_to_currency(object.price)}"
  end
end
