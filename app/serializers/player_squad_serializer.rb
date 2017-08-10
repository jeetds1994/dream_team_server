class PlayerSquadSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :player
  belongs_to :squad
end
