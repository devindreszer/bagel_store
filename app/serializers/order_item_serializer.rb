class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :price, :order_id
  has_one :menu_item, serializer: MenuItemSerializer
  has_many :selections, serializer: SelectionSerializer

  def price
    "#{number_to_currency(object.price)}"
  end
end
