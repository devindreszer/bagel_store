class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end

    change_table :order_items do |t|
      t.references :order, index: true
    end
  end
end
