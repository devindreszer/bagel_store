class OrderItem < ActiveRecord::Base
  belongs_to :menu_item
  has_many :selections, dependent: :destroy
  has_many :options, through: :selections
end
