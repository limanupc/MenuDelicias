class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.references :Identity_Type, index: true
      t.string :tipdocide_numero
      t.string :cli_appaterno
      t.string :cli_apmaterno
      t.string :cli_nombre
      t.references :Sex, index: true

      t.timestamps
    end
  end
end
