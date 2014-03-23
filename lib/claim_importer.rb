class ClaimImporter 
  def self.import_claim

		file = "db/claim_export.csv"
    #  title = entry.title.gsub(/^#\d+\s/, '')

    # Find or create the screencast data into our database

  	CSV.foreach(file, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
      Claim.create(
				title:           row[3],
        ytube_id:        row[1],
        claim_id:        row[0]
      )
    end
  end
end
