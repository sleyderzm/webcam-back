class SanctionSerializer < ActiveModel::Serializer
  attributes :id, :name, :value, :code, :description, :company_id
end
