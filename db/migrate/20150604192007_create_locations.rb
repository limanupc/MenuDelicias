class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :code
      t.string :description
      t.string :department
      t.string :province
      t.string :distric

      t.timestamps
    end
  end
end
