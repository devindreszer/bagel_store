class AddUserToOrderItems < ActiveRecord::Migration
  def change
    change_table :order_items do |t|
      t.references :user, index: true
    end
  end
end
