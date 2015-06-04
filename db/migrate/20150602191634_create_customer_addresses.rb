class CreateCustomerAddresses < ActiveRecord::Migration
  def change
    create_table :customer_addresses do |t|
      t.references :Customer, index: true
      t.string :clidir_direccion
      t.references :Location, index: true
      t.string :clidir_referencia
      t.string :clidir_telefono

      t.timestamps
    end
  end
end
