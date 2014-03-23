require 'csv'
file = 'db/claim_export.csv'
desc "Imports a CSV file into an ActiveRecord table"
task :claim, [:filename] => :environment do    
  
    CSV.foreach(file, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
    
      Claim.create(
        title:           row[3],
        ytube_id:        row[1],
        claim_id:        row[0]
      )
  end

# t.string   "title"
# t.string   "claim_id"
# t.string   "ytube_id"
# t.string   "producer"
# t.datetime "created_at"
# t.datetime "updated_at"

end
