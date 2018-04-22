class CreateModels < ActiveRecord::Migration[5.0]
  def change
    create_table :models do |t|
      t.string :name, null: false
      t.string :document, null: false
      t.string :document_type, null: false
      t.string :nickname
      t.integer :company_id, null: false

      t.timestamps
    end
  end
end
