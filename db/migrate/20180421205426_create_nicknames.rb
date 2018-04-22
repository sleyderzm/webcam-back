class CreateNicknames < ActiveRecord::Migration[5.0]
  def change
    create_table :nicknames do |t|
      t.string :name, null: false
      t.float :accordance, null: false
      t.string :user, null: false
      t.string :password, null: false
      t.integer :platform_id, null: false
      t.integer :model_id, null: false

      t.timestamps
    end
  end
end
