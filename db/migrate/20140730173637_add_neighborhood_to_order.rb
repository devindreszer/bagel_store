class AddNeighborhoodToOrder < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.references :neighborhoods, index: true
    end
  end
end
