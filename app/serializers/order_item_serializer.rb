class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :price
  has_one :menu_item
  has_many :selections, serializer: SelectionSerializer
end
