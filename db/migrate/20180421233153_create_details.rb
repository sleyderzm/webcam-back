class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.float :value
      t.float :gain
      t.integer :paysheet_id, null: false
      t.integer :model_id, null: false

      t.timestamps
    end
  end
end
