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

ActiveRecord::Schema.define(version: 20170824194901) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "club_formations", force: :cascade do |t|
    t.bigint "club_id"
    t.bigint "formation_id"
    t.boolean "current_club_formation"
    t.boolean "default_club_formation"
    t.integer "player_1"
    t.integer "player_2"
    t.integer "player_3"
    t.integer "player_4"
    t.integer "player_5"
    t.integer "player_6"
    t.integer "player_7"
    t.integer "player_8"
    t.integer "player_9"
    t.integer "player_10"
    t.integer "player_11"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_club_formations_on_club_id"
    t.index ["formation_id"], name: "index_club_formations_on_formation_id"
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "badge"
    t.string "url"
  end

  create_table "formations", force: :cascade do |t|
    t.string "format"
    t.integer "goalkeepers"
    t.integer "defenders"
    t.integer "midfielders"
    t.integer "forwards"
    t.string "position_1"
    t.string "position_2"
    t.string "position_3"
    t.string "position_4"
    t.string "position_5"
    t.string "position_6"
    t.string "position_7"
    t.string "position_8"
    t.string "position_9"
    t.string "position_10"
    t.string "position_11"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_squads", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "squad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_player_squads_on_player_id"
    t.index ["squad_id"], name: "index_player_squads_on_squad_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "nationality"
    t.string "club_name"
    t.bigint "club_id"
    t.string "squad_name"
    t.bigint "squad_id"
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
    t.index ["squad_id"], name: "index_players_on_squad_id"
  end

  create_table "squads", force: :cascade do |t|
    t.string "name"
    t.string "league_format"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "badge"
    t.index ["user_id"], name: "index_squads_on_user_id"
  end

  create_table "user_clubs", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_user_clubs_on_club_id"
    t.index ["user_id"], name: "index_user_clubs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "club_formations", "clubs"
  add_foreign_key "club_formations", "formations"
  add_foreign_key "player_squads", "players"
  add_foreign_key "player_squads", "squads"
  add_foreign_key "players", "clubs"
  add_foreign_key "players", "squads"
  add_foreign_key "squads", "users"
  add_foreign_key "user_clubs", "clubs"
  add_foreign_key "user_clubs", "users"
end
