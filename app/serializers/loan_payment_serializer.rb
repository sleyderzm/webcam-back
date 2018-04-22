class LoanPaymentSerializer < ActiveModel::Serializer
  attributes :id, :value, :detail_id, :loan_id
end
