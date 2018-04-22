class ModelSerializer < ActiveModel::Serializer
  attributes :id, :name, :document, :document_type, :nickname, :company_id
end
