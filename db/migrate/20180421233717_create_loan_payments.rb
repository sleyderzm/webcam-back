class CreateLoanPayments < ActiveRecord::Migration[5.0]
  def change
    create_table :loan_payments do |t|
      t.float :value, null: false
      t.integer :detail_id, null: false
      t.integer :loan_id, null: false

      t.timestamps
    end
  end
end
