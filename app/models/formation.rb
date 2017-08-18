class Formation < ApplicationRecord
  has_many :club_formations
  has_many :clubs, through: :club_formations
end
