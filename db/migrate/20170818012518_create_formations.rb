class CreateFormations < ActiveRecord::Migration[5.1]
  def change
    create_table :formations do |t|
      t.string :format
      t.integer :goalkeepers
      t.integer :defenders
      t.integer :midfielders
      t.integer :forwards
      t.string :position_1
      t.string :position_2
      t.string :position_3
      t.string :position_4
      t.string :position_5
      t.string :position_6
      t.string :position_7
      t.string :position_8
      t.string :position_9
      t.string :position_10
      t.string :position_11

      t.timestamps
    end
  end
end
