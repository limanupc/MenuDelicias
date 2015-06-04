class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :category, index: true
      t.string :pro_nombre
      t.string :pro_comentario
      t.decimal :pro_precio

      t.timestamps
    end
  end
end
