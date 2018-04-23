class LogosNull < ActiveRecord::Migration[5.0]
  def change
    change_column :companies, :logo, :binary, :null => true
    change_column :companies, :mime_type, :string, :null => true
    change_column :companies, :logo_name, :string, :null => true
    change_column :platforms, :logo, :binary, :null => true
    change_column :platforms, :mime_type, :string, :null => true
    change_column :platforms, :logo_name, :string, :null => true
    change_column :default_platforms, :logo, :binary, :null => true
    change_column :default_platforms, :mime_type, :string, :null => true
    change_column :default_platforms, :logo_name, :string, :null => true
  end
end
