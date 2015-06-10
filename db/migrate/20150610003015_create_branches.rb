class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.string :address
      t.references :Location, index: true

      t.timestamps
    end
  end
end
