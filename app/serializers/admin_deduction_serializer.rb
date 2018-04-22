class AdminDeductionSerializer < ActiveModel::Serializer
  attributes :id, :name, :value, :description, :company_id
end
