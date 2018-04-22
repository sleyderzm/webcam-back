class PlatformSerializer < ActiveModel::Serializer
  attributes :id, :name, :logo, :mime_type, :logo_name, :company_id, :default_platform_id, :accordance
end
