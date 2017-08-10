class Squad < ApplicationRecord
  has_many :player_squads
  has_many :players, through: :player_squads
  belongs_to :user
end
