class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :role_id, :company_id
end
