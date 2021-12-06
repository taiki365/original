# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_06_103656) do

  create_table "batters", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "batter_name", null: false
    t.integer "bat", null: false
    t.integer "rbi", null: false
    t.integer "single", null: false
    t.integer "double", null: false
    t.integer "triple", null: false
    t.integer "homerun", null: false
    t.integer "walks", null: false
    t.integer "dead_ball", null: false
    t.integer "sacrifice_fly", null: false
    t.integer "strikeout", null: false
    t.integer "steal", null: false
    t.integer "steal_dead", null: false
    t.integer "runs", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pitchers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "pitcher_name", null: false
    t.integer "damage_hit", null: false
    t.float "defense", null: false
    t.integer "win", null: false
    t.integer "lose", null: false
    t.integer "conceded", null: false
    t.integer "damage_homerun", null: false
    t.integer "gave_walks", null: false
    t.integer "gave_dead_ball", null: false
    t.integer "inning", null: false
    t.float "damage_batting_average", null: false
    t.float "damage_base_percentage", null: false
    t.integer "qs", null: false
    t.float "damage_slugging_percentage", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "game_number", null: false
    t.integer "team_name_id", null: false
    t.integer "team_win", null: false
    t.integer "team_lose", null: false
    t.integer "draw", null: false
    t.float "game_difference", null: false
    t.float "team_defense", null: false
    t.float "team_batting_average", null: false
    t.integer "team_homerun", null: false
    t.integer "team_steal", null: false
    t.integer "team_runs", null: false
    t.integer "tema_conceded", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
