include ActionView::Helpers::NumberHelper
class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :price_string, :is_bagel, :is_topping, :is_cc, :is_cheese, :is_meat

  def price_string
    if object.price == 0
      "Free"
    else
      "Add #{number_to_currency(object.price)}"
    end
  end

  def is_bagel
    object.category == "bagel" || object.category == "variety bagel"
  end

  def is_topping
    object.category == "topping"
  end

  def is_cc
    object.category == "basic cc" || object.category == "deluxe cc"
  end

  def is_cheese
    object.category == "cheese"
  end

  def is_meat
    object.category == "meat"
  end
end
