class AddBadgeToSquads < ActiveRecord::Migration[5.1]
  def change
    add_column :squads, :badge, :string
  end
end
