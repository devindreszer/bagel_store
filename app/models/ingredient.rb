class Ingredient < ActiveRecord::Base
  has_many :options, dependent: :destroy
  has_many :menu_items, through: :options
  validates :name, presence: true
end
