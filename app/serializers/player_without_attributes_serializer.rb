class PlayerWithoutAttributesSerializer < ActiveModel::Serializer
  attributes :id, :name, :nationality, :club_name, :club_position#, :club_kit, :rating, :height, :weight, :preferred_foot, :birth_date, :age, :work_rate, :weak_foot, :skill_moves, :ball_control, :dribbling, :marking, :sliding_tackle, :standing_tackle, :aggression, :reactions, :attacking_position, :interceptions, :vision
  # attributes :composure, :crossing, :short_pass, :long_pass, :acceleration, :speed, :stamina, :strength, :balance, :agility, :jumping, :heading, :shot_power, :finishing, :long_shots, :curve, :freekick_accuracy, :penalties, :volleys, :gk_positioning, :gk_diving, :gk_kicking, :gk_handling, :gk_reflexes
  # has_many :squads, through: :player_squads
  # belongs_to :club
end
