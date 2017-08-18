class FormationSerializer < ActiveModel::Serializer
  attributes :id, :format, :goalkeepers, :defenders, :midfielders, :forwards, :position_1, :position_2, :position_3, :position_4, :position_5, :position_6, :position_7, :position_8, :position_9, :position_10, :position_11
  has_many :club_formations
  has_many :clubs, through: :club_formations
end
