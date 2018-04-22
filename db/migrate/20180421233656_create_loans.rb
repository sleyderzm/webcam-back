class CreateLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.float :value, null: false
      t.date :date, null: false
      t.float :debt
      t.boolean :paid_out
      t.integer :model_id, null: false

      t.timestamps
    end
  end
end
