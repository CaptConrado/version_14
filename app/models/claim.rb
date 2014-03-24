class Claim < ActiveRecord::Base
  self.primary_key = "claim_id"
  belongs_to :video, -> { where dead: false },
                  foreign_key: 'ytube_id'
  

  # Claim.where('ytube_id == "zyrKURb66Zk"').pluck(:claim_id)
end
