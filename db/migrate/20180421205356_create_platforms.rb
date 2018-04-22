class CreatePlatforms < ActiveRecord::Migration[5.0]
  def change
    create_table :platforms do |t|
      t.string :name, null: false
      t.binary :logo, null: false
      t.string :mime_type, null: false
      t.string :logo_name, null: false
      t.integer :company_id, null: false
      t.integer :default_platform_id
      t.float :accordance, null: false

      t.timestamps
    end
  end
end
