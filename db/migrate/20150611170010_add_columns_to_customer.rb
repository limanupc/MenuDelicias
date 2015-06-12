class AddColumnsToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :user_id, :int
  end
end
