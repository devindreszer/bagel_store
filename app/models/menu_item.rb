class MenuItem < ActiveRecord::Base
  has_many :options, dependent: :destroy
  has_many :ingredients, through: :options
  validates :name, presence: true
end
