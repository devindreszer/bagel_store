class MenuItem < ActiveRecord::Base
  validates :name, presence: true
end
