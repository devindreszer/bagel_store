class AddCategoryToIngredients < ActiveRecord::Migration
  def change
    change_table :ingredients do |t|
      t.text :category
    end
  end
end
