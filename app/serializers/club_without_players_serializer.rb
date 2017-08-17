class ClubWithoutPlayersSerializer < ActiveModel::Serializer
  attributes :id, :name, :badge
  # has_many :players#, if: :include_players?
  # has_many :clubs, class_name: "Club"
  # has_many :users, through: :user_clubs
end
