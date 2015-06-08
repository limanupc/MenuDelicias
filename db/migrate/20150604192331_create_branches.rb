class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.string :address
      t.references :locations, index: true

      t.timestamps
    end
  end
end
