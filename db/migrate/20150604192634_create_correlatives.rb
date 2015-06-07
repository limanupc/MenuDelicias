class CreateCorrelatives < ActiveRecord::Migration
  def change
    create_table :correlatives do |t|
      t.references :branches, index: true
      t.references :document_types, index: true
      t.string :series
      t.integer :number

      t.timestamps
    end
  end
end
