class CreateIdentityTypes < ActiveRecord::Migration
  def change
    create_table :identity_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
