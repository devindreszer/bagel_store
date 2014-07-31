class OptionSerializer < ActiveModel::Serializer
  attributes :id, :is_addon
  has_one :ingredient, serializer: IngredientSerializer
end
