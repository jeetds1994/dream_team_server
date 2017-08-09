class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :nationality
      t.string :club_name
      t.references :club, foreign_key: true
      t.string :club_position
      t.integer :club_kit
      t.integer :rating
      t.string :height
      t.string :weight
      t.string :preferred_foot
      t.string :birth_date
      t.integer :age
      t.string :work_rate
      t.integer :weak_foot
      t.integer :skill_moves
      t.integer :ball_control
      t.integer :dribbling
      t.integer :marking
      t.integer :sliding_tackle
      t.integer :standing_tackle
      t.integer :aggression
      t.integer :reactions
      t.integer :attacking_position
      t.integer :interceptions
      t.integer :vision
      t.integer :composure
      t.integer :crossing
      t.integer :short_pass
      t.integer :long_pass
      t.integer :acceleration
      t.integer :speed
      t.integer :stamina
      t.integer :strength
      t.integer :balance
      t.integer :agility
      t.integer :jumping
      t.integer :heading
      t.integer :shot_power
      t.integer :finishing
      t.integer :long_shots
      t.integer :curve
      t.integer :freekick_accuracy
      t.integer :penalties
      t.integer :volleys
      t.integer :gk_positioning
      t.integer :gk_diving
      t.integer :gk_kicking
      t.integer :gk_handling
      t.integer :gk_reflexes

      t.timestamps
    end
  end
end
