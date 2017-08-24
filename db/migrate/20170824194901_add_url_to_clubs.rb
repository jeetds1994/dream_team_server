class AddUrlToClubs < ActiveRecord::Migration[5.1]
  def change
    add_column :clubs, :url, :string
  end
end
