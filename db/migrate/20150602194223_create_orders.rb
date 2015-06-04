class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :Branch, index: true
      t.references :Customer, index: true
      t.date :ped_fecha_solicitud
      t.date :ped_fecha_entrega
      t.time :ped_hora_entrega
      t.decimal :ped_total
      t.integer :ped_estado
      t.integer :perso_atendio
      t.integer :tipdoc_codigo
      t.string :cor_serie
      t.date :ped_fecha_comprobante

      t.timestamps
    end
  end
end
