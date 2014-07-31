class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :neighborhood_name
      t.decimal :delivery_charge, precision: 8, scale: 2
    end
  end
end
