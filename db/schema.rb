ActiveRecord::Schema.define(version: 20140323033102) do

  create_table "claims", force: true do |t|
    t.string   "title"
    t.string   "claim_id"
    t.string   "ytube_id"
    t.string   "producer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", force: true do |t|
    t.string   "month"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "title"
    t.string   "ytube_id"
    t.string   "revenue"
    t.string   "report"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "views"
    t.boolean  "dead"
  end

end
