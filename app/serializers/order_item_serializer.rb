class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :price, :order_id, :total_price
  has_one :menu_item, serializer: MenuItemSerializer
  has_many :selections, serializer: SelectionSerializer

  def total_price
    "#{number_to_currency(object.price * object.quantity)}"
  end
end
