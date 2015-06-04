class CreateCorrelatives < ActiveRecord::Migration
  def change
    create_table :correlatives do |t|
      t.references :branch, index: true
      t.references :document_type, index: true
      t.string :cor_serie
      t.integer :cor_numero

      t.timestamps
    end
  end
end
