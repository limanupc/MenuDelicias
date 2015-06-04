class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :ubi_codigo
      t.string :ubi_departamento
      t.string :ubi_provincia
      t.string :ubi_distrito

      t.timestamps
    end
  end
end
