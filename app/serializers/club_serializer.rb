class ClubSerializer < ActiveModel::Serializer
  attributes :id, :name, :badge
  has_many :players
  has_many :users, through: :user_clubs
end
