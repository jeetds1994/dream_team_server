class Player < ApplicationRecord
  has_many :player_squads
  has_many :squads, through: :player_squads
  belongs_to :club
end
