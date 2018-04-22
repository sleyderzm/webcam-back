class PaysheetSerializer < ActiveModel::Serializer
  attributes :id, :since_date, :until_date, :value, :gain, :dollar_value, :rmr, :head_quartes_id
end
