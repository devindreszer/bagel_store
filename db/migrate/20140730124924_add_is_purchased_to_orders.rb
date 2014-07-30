class AddIsPurchasedToOrders < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.boolean :is_purchased
    end
  end
end
