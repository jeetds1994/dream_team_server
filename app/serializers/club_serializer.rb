class ClubSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :players
end
