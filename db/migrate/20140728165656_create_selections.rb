class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.references :order_item, index: true
      t.references :option, index: true

      t.timestamps
    end
  end
end
