class CreateIdentityTypes < ActiveRecord::Migration
  def change
    create_table :identity_types do |t|
      t.string :tipdocide_descripcion

      t.timestamps
    end
  end
end
