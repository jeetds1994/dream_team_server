class CreatePlayerSquads < ActiveRecord::Migration[5.1]
  def change
    create_table :player_squads do |t|
      t.references :player, foreign_key: true
      t.references :squad, foreign_key: true

      t.timestamps
    end
  end
end
