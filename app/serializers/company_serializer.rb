class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :logo, :mime_type, :logo_name
end
