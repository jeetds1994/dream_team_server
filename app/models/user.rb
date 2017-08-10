class User < ApplicationRecord
  has_secure_password
  has_many :squads
  has_many :user_clubs
  has_many :clubs, through: :user_clubs
end
