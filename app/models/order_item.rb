class OrderItem < ActiveRecord::Base
  belongs_to :menu_item
  belongs_to :user
  has_many :selections, dependent: :destroy
  has_many :options, through: :selections
  accepts_nested_attributes_for :selections
end
