class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :ubi_codigo
      t.string :description
      t.string :department
      t.string :province
      t.string :distric

      t.timestamps
    end
  end
end
