class SquadSerializer < ActiveModel::Serializer
  attributes :id, :name, :league_format
  has_many :players, through: :player_squads
  belongs_to :user
end
