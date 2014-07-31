class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :price, :order_id, :total_price, :total_price_string
  has_one :menu_item, serializer: MenuItemSerializer
  has_many :selections, serializer: SelectionSerializer

  def total_price
    "#{object.price * object.quantity}"
  end

  def total_price_string
    "#{number_to_currency(object.price * object.quantity)}"
  end
end
