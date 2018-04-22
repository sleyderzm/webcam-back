class LoanSerializer < ActiveModel::Serializer
  attributes :id, :value, :date, :debt, :paid_out, :model_id
end
