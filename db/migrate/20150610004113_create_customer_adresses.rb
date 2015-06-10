class CreateCustomerAdresses < ActiveRecord::Migration
  def change
    create_table :customer_adresses do |t|
      t.references :Customer, index: true
      t.string :address
      t.references :Location, index: true
      t.string :reference
      t.string :phone

      t.timestamps
    end
  end
end
