class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.binary :password, null: false
      t.integer :role_id, null: false
      t.integer :company_id, null: true

      t.timestamps
    end
  end
end
