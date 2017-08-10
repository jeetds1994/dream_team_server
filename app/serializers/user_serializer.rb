class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :squads
  has_many :clubs, through: :user_clubs
end
