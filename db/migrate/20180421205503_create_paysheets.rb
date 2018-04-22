class CreatePaysheets < ActiveRecord::Migration[5.0]
  def change
    create_table :paysheets do |t|
      t.date :since_date, null: false
      t.date :until_date, null: false
      t.float :value
      t.float :gain
      t.float :dollar_value, null: false
      t.float :rmr, null: false
      t.integer :head_quartes_id, null: false

      t.timestamps
    end
  end
end
