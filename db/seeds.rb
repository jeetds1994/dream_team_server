# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach('./db/fifa_clubs_raw.csv', headers: true) do |row|
  Club.create(row.to_hash)
end

CSV.foreach('./db/fifa_players_raw.csv', headers: true) do |row|
  player = Player.new(row.to_hash)
  club = Club.where(name: player["club_name"])[0]
  player.club = club
  player.save
end
