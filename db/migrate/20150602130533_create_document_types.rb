class CreateDocumentTypes < ActiveRecord::Migration
  def change
    create_table :document_types do |t|
      t.string :tipdoc_descripcion

      t.timestamps
    end
  end
end
