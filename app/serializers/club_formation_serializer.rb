class ClubFormationSerializer < ActiveModel::Serializer
  attributes :id, :current_club_formation, :default_club_formation, :player_1, :player_2, :player_3, :player_4, :player_5, :player_6, :player_7, :player_8, :player_9, :player_10, :player_11
  belongs_to :club
  belongs_to :formation
end
