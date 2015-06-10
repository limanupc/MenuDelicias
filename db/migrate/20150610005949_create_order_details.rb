class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.references :Order, index: true
      t.references :Product, index: true
      t.integer :quantity
      t.decimal :price
      t.decimal :partial

      t.timestamps
    end
  end
end
