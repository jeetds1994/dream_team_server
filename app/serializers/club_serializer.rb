class ClubSerializer < ActiveModel::Serializer
  attributes :id, :name, :badge
  has_many :players
  has_many :users, through: :user_clubs
  has_many :club_formations
  has_many :formations, through: :club_formations
end
