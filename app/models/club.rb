class Club < ApplicationRecord
  has_many :players
  has_many :user_clubs
  has_many :users, through: :user_clubs
  has_many :club_formations
  has_many :formations, through: :club_formations
end
