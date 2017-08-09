# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170809200223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "nationality"
    t.string "club_name"
    t.bigint "club_id"
    t.string "club_position"
    t.integer "club_kit"
    t.integer "rating"
    t.string "height"
    t.string "weight"
    t.string "preferred_foot"
    t.string "birth_date"
    t.integer "age"
    t.string "work_rate"
    t.integer "weak_foot"
    t.integer "skill_moves"
    t.integer "ball_control"
    t.integer "dribbling"
    t.integer "marking"
    t.integer "sliding_tackle"
    t.integer "standing_tackle"
    t.integer "aggression"
    t.integer "reactions"
    t.integer "attacking_position"
    t.integer "interceptions"
    t.integer "vision"
    t.integer "composure"
    t.integer "crossing"
    t.integer "short_pass"
    t.integer "long_pass"
    t.integer "acceleration"
    t.integer "speed"
    t.integer "stamina"
    t.integer "strength"
    t.integer "balance"
    t.integer "agility"
    t.integer "jumping"
    t.integer "heading"
    t.integer "shot_power"
    t.integer "finishing"
    t.integer "long_shots"
    t.integer "curve"
    t.integer "freekick_accuracy"
    t.integer "penalties"
    t.integer "volleys"
    t.integer "gk_positioning"
    t.integer "gk_diving"
    t.integer "gk_kicking"
    t.integer "gk_handling"
    t.integer "gk_reflexes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_players_on_club_id"
  end

  create_table "squads", force: :cascade do |t|
    t.string "name"
    t.string "league_format"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "players", "clubs"
end
