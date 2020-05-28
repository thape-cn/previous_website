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

ActiveRecord::Schema.define(version: 2020_05_28_052920) do

  create_table "about_translations", force: :cascade do |t|
    t.integer "about_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "about_title"
    t.text "about_content"
    t.string "about_img_alt"
    t.index ["about_id"], name: "index_about_translations_on_about_id"
    t.index ["locale"], name: "index_about_translations_on_locale"
  end

  create_table "abouts", force: :cascade do |t|
    t.string "about_title"
    t.text "about_content"
    t.string "about_img"
    t.string "about_img_alt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "case_pictures", force: :cascade do |t|
    t.integer "case_id"
    t.string "album"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["case_id"], name: "index_case_pictures_on_case_id"
  end

  create_table "cases", force: :cascade do |t|
    t.string "title"
    t.string "market"
    t.string "snapshot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "professional"
    t.text "other"
    t.integer "position", default: 0
    t.string "seo_title"
    t.string "seo_keywords"
    t.string "seo_description"
  end

  create_table "homes", force: :cascade do |t|
    t.string "banner_1"
    t.string "title_1"
    t.string "subtitle_1"
    t.string "banner_2"
    t.string "title_2"
    t.string "subtitle_2"
    t.string "banner_3"
    t.string "title_3"
    t.string "subtitle_3"
    t.string "banner_4"
    t.string "title_4"
    t.string "subtitle_4"
    t.string "banner_5"
    t.string "title_5"
    t.string "subtitle_5"
    t.string "project_img_1"
    t.string "project_title_1"
    t.string "project_subtitle_1"
    t.string "project_link_1"
    t.string "project_img_2"
    t.string "project_title_2"
    t.string "project_subtitle_2"
    t.string "project_link_2"
    t.string "project_img_3"
    t.string "project_title_3"
    t.string "project_subtitle_3"
    t.string "project_link_3"
    t.string "info_img_1"
    t.string "info_title_1"
    t.string "info_subtitle_1"
    t.string "info_link_1"
    t.string "info_img_2"
    t.string "info_title_2"
    t.string "info_subtitle_2"
    t.string "info_link_2"
    t.string "info_img_3"
    t.string "info_title_3"
    t.string "info_subtitle_3"
    t.string "info_link_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "banner_phone_1"
    t.string "banner_phone_2"
    t.string "banner_phone_3"
    t.string "banner_phone_4"
    t.string "banner_phone_5"
    t.string "project_phone_img_1"
    t.string "project_phone_img_2"
    t.string "project_phone_img_3"
    t.string "banner_alt_1"
    t.string "banner_alt_2"
    t.string "banner_alt_3"
    t.string "banner_alt_4"
    t.string "banner_alt_5"
    t.string "project_alt_1"
    t.string "project_alt_2"
    t.string "project_alt_3"
    t.string "info_alt_1"
    t.string "info_alt_2"
    t.string "info_alt_3"
    t.string "info_high_img"
    t.string "info_high_title"
    t.text "info_high_introduction"
    t.string "info_high_link"
    t.string "info_high_phone_img"
  end

  create_table "infos", force: :cascade do |t|
    t.string "title"
    t.text "introduction"
    t.text "content"
    t.string "picture"
    t.integer "category"
    t.integer "pushlist"
    t.string "banner"
    t.string "snapshot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position", default: 0
    t.string "snapshot_alt"
    t.string "banner_alt"
    t.boolean "hide_in_design_staff_news", default: false
    t.boolean "hide_in_index_news", default: false
    t.string "seo_title"
    t.string "seo_keywords"
    t.string "seo_description"
  end

  create_table "map_contact_translations", force: :cascade do |t|
    t.integer "map_contact_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "address"
    t.string "tel"
    t.string "fax"
    t.string "long_name"
    t.string "alt_name"
    t.string "website_name"
    t.index ["locale"], name: "index_map_contact_translations_on_locale"
    t.index ["map_contact_id"], name: "index_map_contact_translations_on_map_contact_id"
  end

  create_table "map_contacts", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "tel"
    t.string "fax"
    t.string "long_name"
    t.string "alt_name"
    t.string "media_phone"
    t.string "marketing_phone"
    t.string "website_url"
  end

  create_table "people", force: :cascade do |t|
    t.integer "category"
    t.integer "line"
    t.string "avatar"
    t.string "photo"
    t.string "name"
    t.string "title"
    t.text "introduce"
    t.string "works"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url_name"
    t.integer "position", default: 0
    t.date "leaving_date"
    t.string "belong_area"
  end

  create_table "person_translations", force: :cascade do |t|
    t.integer "person_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "title"
    t.text "introduce"
    t.index ["locale"], name: "index_person_translations_on_locale"
    t.index ["person_id"], name: "index_person_translations_on_person_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "image"
    t.integer "info_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["info_id"], name: "index_pictures_on_info_id"
  end

  create_table "seos", force: :cascade do |t|
    t.string "home_title"
    t.text "description"
    t.text "abstract"
    t.text "keywords"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "about_title"
    t.string "management_title"
    t.string "designing_title"
    t.string "contact_title"
  end

  create_table "service_files", force: :cascade do |t|
    t.string "interior_intro_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "case_pictures", "cases"
  add_foreign_key "pictures", "infos"
end
