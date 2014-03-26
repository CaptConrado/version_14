class Producer < ActiveRecord::Base
  has_many :claims
  has_many :videos, through: :claims
end





# t.string   "name"
# t.string   "email"
# t.string   "address"
# t.string   "phone"
# t.string   "twitter"
# t.boolean  "collab"
# t.datetime "created_at"
# t.datetime "updated_at"