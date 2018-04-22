class CreateAdminDeductions < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_deductions do |t|
      t.string :name, null: false
      t.float :value, null: false
      t.text :description
      t.integer :company_id, null: false

      t.timestamps
    end
  end
end
