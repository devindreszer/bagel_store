class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.text :name, null: false
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
