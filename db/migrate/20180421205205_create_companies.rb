class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.binary :logo, null: false
      t.string :mime_type, null: false
      t.string :logo_name, null: false

      t.timestamps
    end
  end
end
