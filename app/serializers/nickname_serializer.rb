class NicknameSerializer < ActiveModel::Serializer
  attributes :id, :name, :accordance, :user, :password, :platform_id, :model_id
end
