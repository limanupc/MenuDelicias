class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :suc_nombre
      t.string :suc_direccion
      t.references :location, index: true

      t.timestamps
    end
  end
end
