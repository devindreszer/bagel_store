class SelectionSerializer < ActiveModel::Serializer
  attributes :id, :is_selected
  has_one :option, serializer: OptionSerializer
end
