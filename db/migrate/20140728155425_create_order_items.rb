class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.decimal :price, precision: 8, scale: 2
      t.references :menu_item, index: true

      t.timestamps
    end
  end
end
