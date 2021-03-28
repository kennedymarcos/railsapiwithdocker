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

ActiveRecord::Schema.define(version: 20210328012332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bodies", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "eyes", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "founds", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hairs", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "heights", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "missings", force: :cascade do |t|
    t.string   "responsable"
    t.string   "cpf"
    t.string   "mail"
    t.integer  "uf_id"
    t.string   "address"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "cellphone1"
    t.string   "cellphone2"
    t.string   "disappeared"
    t.integer  "gender_id"
    t.date     "birthday"
    t.date     "disappeared_day"
    t.text     "features"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "found_id",                   default: 1
    t.string   "missing_reason"
    t.string   "doing"
    t.string   "last_seen"
    t.integer  "body_id"
    t.integer  "skin_id"
    t.integer  "eye_id"
    t.integer  "hair_id"
    t.string   "clothes"
    t.integer  "mentaldamage_id"
    t.integer  "physicaldamage_id"
    t.string   "picturemain_file_name"
    t.string   "picturemain_content_type"
    t.integer  "picturemain_file_size"
    t.datetime "picturemain_updated_at"
    t.string   "picturesecond_file_name"
    t.string   "picturesecond_content_type"
    t.integer  "picturesecond_file_size"
    t.datetime "picturesecond_updated_at"
    t.string   "picturethird_file_name"
    t.string   "picturethird_content_type"
    t.integer  "picturethird_file_size"
    t.datetime "picturethird_updated_at"
    t.string   "picturefourth_file_name"
    t.string   "picturefourth_content_type"
    t.integer  "picturefourth_file_size"
    t.datetime "picturefourth_updated_at"
    t.string   "picturefifth_file_name"
    t.string   "picturefifth_content_type"
    t.integer  "picturefifth_file_size"
    t.datetime "picturefifth_updated_at"
    t.integer  "height_id"
    t.integer  "public_id",                  default: 1
    t.string   "bo"
    t.index ["body_id"], name: "index_missings_on_body_id", using: :btree
    t.index ["eye_id"], name: "index_missings_on_eye_id", using: :btree
    t.index ["found_id"], name: "index_missings_on_found_id", using: :btree
    t.index ["gender_id"], name: "index_missings_on_gender_id", using: :btree
    t.index ["hair_id"], name: "index_missings_on_hair_id", using: :btree
    t.index ["height_id"], name: "index_missings_on_height_id", using: :btree
    t.index ["skin_id"], name: "index_missings_on_skin_id", using: :btree
    t.index ["uf_id"], name: "index_missings_on_uf_id", using: :btree
  end

  create_table "petgenders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string   "ownername"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "phone3"
    t.string   "petname"
    t.string   "breed"
    t.string   "color"
    t.integer  "petgender_id"
    t.date     "missingdate"
    t.string   "missingplace"
    t.integer  "temperament_id"
    t.integer  "reward_id"
    t.string   "rewarddescription"
    t.text     "obs"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "found_id",                   default: 1
    t.integer  "public_id",                  default: 1
    t.string   "picturemain_file_name"
    t.string   "picturemain_content_type"
    t.integer  "picturemain_file_size"
    t.datetime "picturemain_updated_at"
    t.string   "picturesecond_file_name"
    t.string   "picturesecond_content_type"
    t.integer  "picturesecond_file_size"
    t.datetime "picturesecond_updated_at"
    t.string   "picturethird_file_name"
    t.string   "picturethird_content_type"
    t.integer  "picturethird_file_size"
    t.datetime "picturethird_updated_at"
    t.string   "picturefourth_file_name"
    t.string   "picturefourth_content_type"
    t.integer  "picturefourth_file_size"
    t.datetime "picturefourth_updated_at"
    t.string   "picturefifth_file_name"
    t.string   "picturefifth_content_type"
    t.integer  "picturefifth_file_size"
    t.datetime "picturefifth_updated_at"
    t.index ["petgender_id"], name: "index_pets_on_petgender_id", using: :btree
    t.index ["temperament_id"], name: "index_pets_on_temperament_id", using: :btree
  end

  create_table "questions", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id", using: :btree
  end

  create_table "skins", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "temperaments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ufs", force: :cascade do |t|
    t.string   "name"
    t.string   "fullname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id", using: :btree
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree
    t.index ["user_id"], name: "index_users_roles_on_user_id", using: :btree
  end

  add_foreign_key "missings", "bodies"
  add_foreign_key "missings", "eyes"
  add_foreign_key "missings", "founds"
  add_foreign_key "missings", "genders"
  add_foreign_key "missings", "hairs"
  add_foreign_key "missings", "heights"
  add_foreign_key "missings", "skins"
  add_foreign_key "missings", "ufs"
  add_foreign_key "pets", "petgenders"
  add_foreign_key "pets", "temperaments"
end
