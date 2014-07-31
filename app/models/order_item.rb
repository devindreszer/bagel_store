class OrderItem < ActiveRecord::Base
  belongs_to :menu_item
  belongs_to :user
  belongs_to :order
  has_many :selections, dependent: :destroy
  has_many :options, through: :selections
  accepts_nested_attributes_for :selections

  def set_initial_quantity
    self.quantity = 1
  end

  def set_initial_selections
    self.options = self.menu_item.options

    self.selections.each do |selection|
      if selection.option.is_addon == true
        selection.is_selected = false
      else
        selection.is_selected = true
      end
    end
  end

  def set_intitial_price
    self.price = self.menu_item.price
  end

  def reset_selections
    self.selections = []
  end

  def set_selections
    menu_item_option_ids = self.menu_item.options.map(&:id)
    selection_option_ids = self.selections.map(&:option_id)

    menu_item_option_ids.each do |menu_item_option_id|
      unless selection_option_ids.include?(menu_item_option_id)
        self.selections.new(option_id: menu_item_option_id, is_selected: false)
      end
    end
  end

  def calculate_price
    self.price = self.menu_item.price
    self.selections.each do |selection|
      if selection.is_selected && selection.option.is_addon
        self.price += selection.option.ingredient.price
      end
    end
  end

end
