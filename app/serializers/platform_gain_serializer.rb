class PlatformGainSerializer < ActiveModel::Serializer
  attributes :id, :tokens, :value, :accordance, :gain, :nickname_id, :detail_id
end
