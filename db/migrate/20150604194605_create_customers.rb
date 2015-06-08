class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.references :identity_types, index: true
      t.references :sexes, index: true
      t.string :document_number
      t.string :first_name
      t.string :last_name
      t.string :name
      t.string :mail

      t.timestamps
    end
  end
end
