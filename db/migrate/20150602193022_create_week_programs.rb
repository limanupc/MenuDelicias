class CreateWeekPrograms < ActiveRecord::Migration
  def change
    create_table :week_programs do |t|
      t.date :prosemmen_fecha
      t.references :Branch, index: true
      t.references :Product, index: true

      t.timestamps
    end
  end
end
