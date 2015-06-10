class CreateWeekPrograms < ActiveRecord::Migration
  def change
    create_table :week_programs do |t|
      t.date :date
      t.references :Branch, index: true
      t.references :Product, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
