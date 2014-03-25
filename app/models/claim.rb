class Claim < ActiveRecord::Base
  self.primary_key = "claim_id"
  belongs_to :video, foreign_key: 'ytube_id'
  
  def oy
    # kay = video.ytube_id
    # Claim.where('ytube_id == #{kay}').pluck(:claim_id)
  end
end
