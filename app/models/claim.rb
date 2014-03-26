class Claim < ActiveRecord::Base
  self.primary_key = "claim_id"
  belongs_to :video, foreign_key: 'ytube_id'
  belongs_to :producer

  scope :vine_claim, -> {}
  
  def all_claims
    video
  end


  def self.import file
    cid = 10
    CSV.foreach(file.path, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
      Claim.create(
        # title:           row[3],
        ytube_id:        row[1],
        claim_id:        row[0],
        producer_id:     cid
      )
    end
  end
end

# Claim.where('ytube_id == #{kay}').pluck(:claim_id)


