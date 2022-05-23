ActiveRecord::Schema.define(version: 2022_05_23_151042) do

  create_table "auditions", force: :cascade do |t|
    t.string "actor"
    t.string "location"
    t.integer "phone"
    t.boolean "hired"
    t.integer "role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "character_name"
  end

end
