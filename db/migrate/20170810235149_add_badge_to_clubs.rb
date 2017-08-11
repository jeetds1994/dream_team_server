class AddBadgeToClubs < ActiveRecord::Migration[5.1]
  def change
    add_column :clubs, :badge, :string
  end
end
