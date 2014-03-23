class Claim < ActiveRecord::Base
  self.primary_key = "claim_id"
  belongs_to :video, -> { where dead: false },
                  foreign_key: 'ytube_id'
end
