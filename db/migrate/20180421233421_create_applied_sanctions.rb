class CreateAppliedSanctions < ActiveRecord::Migration[5.0]
  def change
    create_table :applied_sanctions do |t|
      t.float :value, null: false
      t.timestamp :date, null: false
      t.string :name, null: false
      t.text :description
      t.integer :model_id, null: false
      t.integer :sanction_id, null: false
      t.integer :detail_id, null: false
      t.integer :head_quartes_id, null:false
      t.timestamps
    end
  end
end
