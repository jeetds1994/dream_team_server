class CreateSquads < ActiveRecord::Migration[5.1]
  def change
    create_table :squads do |t|
      t.string :name
      t.string :league_format

      t.timestamps
    end
  end
end
