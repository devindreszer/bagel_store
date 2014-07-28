class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.text :name, null: false
      t.text :image_url
      t.decimal :price, precision: 8, scale: 2
      t.text :description
      t.boolean :is_bulk

      t.timestamps
    end
  end
end
