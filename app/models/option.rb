class Option < ActiveRecord::Base
  belongs_to :menu_item
  belongs_to :ingredient
  has_many :selections, dependent: :destroy
  has_many :order_items, through: :selections
end
