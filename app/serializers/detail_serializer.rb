class DetailSerializer < ActiveModel::Serializer
  attributes :id, :value, :gain, :paysheet_id, :model_id
end
