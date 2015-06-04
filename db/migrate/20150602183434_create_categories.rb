class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :cat_descripcion

      t.timestamps
    end
  end
end
