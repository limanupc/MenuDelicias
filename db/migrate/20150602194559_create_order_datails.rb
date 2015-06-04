class CreateOrderDatails < ActiveRecord::Migration
  def change
    create_table :order_datails do |t|
      t.references :Order, index: true
      t.references :Product, index: true
      t.integer :peddet_cantidad
      t.decimal :peddet_precio
      t.decimal :peddet_sub_total

      t.timestamps
    end
  end
end
