class DeductionSerializer < ActiveModel::Serializer
  attributes :id, :name, :value, :description, :admin_deduction_id, :detail_id
end
