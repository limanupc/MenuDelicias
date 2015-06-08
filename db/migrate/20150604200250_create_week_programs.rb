class CreateWeekPrograms < ActiveRecord::Migration
  def change
    create_table :week_programs do |t|
      t.date :date
      t.references :branches, index: true
      t.references :products, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
