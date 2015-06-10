class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :Branch, index: true
      t.references :Customer, index: true
      t.date :date_application
      t.date :delivery_date
      t.time :delivery_time
      t.decimal :total
      t.string :flag
      t.string :staff
      t.references :Document_type, index: true
      t.string :series
      t.date :date_voucher

      t.timestamps
    end
  end
end
