class Claim < ActiveRecord::Base
  self.primary_key = "claim_id"
  belongs_to :video, foreign_key: 'ytube_id'
  belongs_to :producer

  scope :vine_claim, -> {}
  
  def all_claims
    video
  end

  def id_check name
    if name =~ /Alabama/
      2
    elsif name =~ /Amymarie/
      3
    elsif name =~ /Austin/
      4
    elsif name =~ /BarkleyThePom/
      5
    elsif name =~ /Bottlerocket/
      6
    elsif name =~ /Brandon Calvillo/
      7
    elsif name =~ /Brennan/
      8
    elsif name =~ /Furlan/
      9
    elsif name =~ /Devlin/
      11
    # elsif name =~ /Amymarie/
    # #   3
    # elsif name =~ /Amymarie/
    # #   3
    # elsif name =~ /Amymarie/
    # #   3
    # elsif name =~ /Amymarie/
    # #   3
    # elsif name =~ /Amymarie/
    # #   3
    # elsif name =~ /Amymarie/
    # #   3
    # elsif name =~ /Amymarie/
    # #   3
    # elsif name =~ /Amymarie/
    # #   3
    # elsif name =~ /Amymarie/
    #   3
    else
      puts "no match"
    end
  end

# puts id_check "alm"


  def self.import file

    CSV.foreach(file.path, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
          
      Claim.create(
        # title:           row[3],
        ytube_id:        row[1],
        claim_id:        row[0],
        producer_id:     16
      )
    end
  end
end

# Claim.where('ytube_id == #{kay}').pluck(:claim_id)


