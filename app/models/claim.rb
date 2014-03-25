class Claim < ActiveRecord::Base
  self.primary_key = "claim_id"
  belongs_to :video, foreign_key: 'ytube_id'
  
  def all_claims
    video
  end
end

# Claim.where('ytube_id == #{kay}').pluck(:claim_id)
