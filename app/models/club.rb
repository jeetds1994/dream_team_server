class Club < ApplicationRecord
  has_many :players
  has_many :user_clubs
  has_many :users, through: :user_clubs
end
