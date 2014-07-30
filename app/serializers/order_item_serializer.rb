include ActionView::Helpers::NumberHelper
class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :menu_item_id, :menu_item_name, :menu_item_image_url, :menu_item_price, :menu_item_description, :selections, :quantity, :price

  def menu_item_id
    "#{object.menu_item.id}"
  end

  def menu_item_name
    "#{object.menu_item.name}"
  end

  def menu_item_image_url
    "#{object.menu_item.image_url}"
  end

  def menu_item_price
    "#{number_to_currency(object.menu_item.price)}"
  end

  def menu_item_description
    "#{object.menu_item.description}"
  end

  def selections
    result = "selections: {["
    object.selections.each do |selection|
      option = selection.option
      ingredient = option.ingredient
      result += "{ name: #{ingredient.name},
        price: #{ingredient.price},
        is_addon: #{option.is_addon},
        is_selected: #{selection.is_selected}"
    end
    result += "}]"
  end

end
