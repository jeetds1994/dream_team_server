class CreateClubFormations < ActiveRecord::Migration[5.1]
  def change
    create_table :club_formations do |t|
      t.references :club, foreign_key: true
      t.references :formation, foreign_key: true
      t.boolean :current_club_formation
      t.boolean :default_club_formation
      t.integer :player_1
      t.integer :player_2
      t.integer :player_3
      t.integer :player_4
      t.integer :player_5
      t.integer :player_6
      t.integer :player_7
      t.integer :player_8
      t.integer :player_9
      t.integer :player_10
      t.integer :player_11

      t.timestamps
    end
  end
end
