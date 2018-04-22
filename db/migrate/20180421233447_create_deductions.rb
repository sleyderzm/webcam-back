class CreateDeductions < ActiveRecord::Migration[5.0]
  def change
    create_table :deductions do |t|
      t.string :name, null: false
      t.float :value, null: false
      t.text :description
      t.date :date
      t.integer :admin_deduction_id
      t.integer :detail_id, null: false

      t.timestamps
    end
  end
end
