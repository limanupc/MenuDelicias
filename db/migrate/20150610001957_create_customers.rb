class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.references :identity_type, index: true
      t.string :document_number
      t.string :first_last_name
      t.string :second_last_name
      t.string :name
      t.string :mail
      t.references :sex, index: true

      t.timestamps
    end
  end
end
