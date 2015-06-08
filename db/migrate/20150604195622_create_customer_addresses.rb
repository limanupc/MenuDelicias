class CreateCustomerAddresses < ActiveRecord::Migration
  def change
    create_table :customer_addresses do |t|
      t.references :customers, index: true
      t.string :address
      t.references :locations, index: true
      t.string :reference
      t.string :phone

      t.timestamps
    end
  end
end
