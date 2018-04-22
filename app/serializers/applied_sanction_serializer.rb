class AppliedSanctionSerializer < ActiveModel::Serializer
  attributes :id, :value, :date, :name, :description, :model_id, :sanction_id, :detail_id
end
