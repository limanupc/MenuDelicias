class CreateIdentutyTypes < ActiveRecord::Migration
  def change
    create_table :identuty_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
