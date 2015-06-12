class AddColumnsToUsercustomers < ActiveRecord::Migration
  
  def change
    
    add_reference :usercustomers, :identity_type, index: true
    add_column :usercustomers, :document_number, :string
    add_column :usercustomers, :first_last_name, :string
    add_column :usercustomers, :second_last_name, :string
    add_column :usercustomers, :name, :string
    add_reference :usercustomers, :sex, index: true
    add_column :usercustomers, :cell, :string
    add_column :usercustomers, :dateofbirth, :datetime
    
  end
  
end
