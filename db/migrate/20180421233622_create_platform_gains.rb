class CreatePlatformGains < ActiveRecord::Migration[5.0]
  def change
    create_table :platform_gains do |t|
      t.float :tokens, null: false
      t.float :value, null: false
      t.float :accordance, null: false
      t.float :gain, null: false
      t.integer :nickname_id, null: false
      t.integer :detail_id, null: false

      t.timestamps
    end
  end
end
