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

ActiveRecord::Schema.define(version: 2019_04_25_072514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.text "team_name"
    t.text "team_rank"
    t.text "manager"
    t.text "schedule"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "player_id"
    t.integer "squad_id"
  end

  create_table "clubs_players", force: :cascade do |t|
    t.integer "club_id"
    t.integer "player_id"
  end

  create_table "players", force: :cascade do |t|
    t.text "name"
    t.text "country"
    t.text "dob"
    t.text "position"
    t.text "number"
    t.text "nation_image"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "club_id"
  end

  create_table "squads", force: :cascade do |t|
    t.text "name"
    t.text "number"
    t.text "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "standings", force: :cascade do |t|
    t.text "team_rank"
    t.text "team_name"
    t.integer "win"
    t.integer "draw"
    t.integer "loss"
    t.integer "goals_for"
    t.integer "goals_against"
    t.integer "goal_difference"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "standings_clubs", force: :cascade do |t|
    t.integer "standing_id"
    t.integer "club_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "password_digest"
    t.boolean "admin", default: false
  end

end
