class PasswordSerializer < ActiveModel::Serializer
  attributes :id, :key, :charm, :chain, :user_id
end
