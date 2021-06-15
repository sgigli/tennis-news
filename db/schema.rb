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

ActiveRecord::Schema.define(version: 2021_06_15_163227) do

  create_table "bios", force: :cascade do |t|
    t.string "birthplace"
    t.integer "age"
    t.date "birthday"
    t.string "mother"
    t.string "father"
    t.string "residence"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_bios_on_player_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doubles_stats", force: :cascade do |t|
    t.integer "ranking"
    t.integer "points"
    t.integer "career_titles"
    t.integer "career_record"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_doubles_stats_on_player_id"
  end

  create_table "earnings", force: :cascade do |t|
    t.integer "prize_money"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_earnings_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "country_id"
    t.index ["country_id"], name: "index_players_on_country_id"
  end

  create_table "playing_styles", force: :cascade do |t|
    t.string "racquet_hand"
    t.string "backhand"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_playing_styles_on_player_id"
  end

  create_table "singles_stats", force: :cascade do |t|
    t.integer "ranking"
    t.integer "points"
    t.integer "career_titles"
    t.integer "career_record"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_singles_stats_on_player_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.integer "height"
    t.integer "weight"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_sizes_on_player_id"
  end

  create_table "standings", force: :cascade do |t|
    t.integer "ranking"
    t.integer "points"
    t.date "date"
    t.string "stats_type"
    t.integer "stats_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "current", default: false
    t.index ["stats_type", "stats_id"], name: "index_standings_on_stats_type_and_stats_id"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "coach", default: "--- []\n"
    t.index ["player_id"], name: "index_teams_on_player_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
