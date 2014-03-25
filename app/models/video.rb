class Video < ActiveRecord::Base
  self.primary_key = "ytube_id"
  has_many :claims

  scope :top_vids, -> {where(dead: false)}

  def fee
    BigDecimal.new(revenue)/2
  end

  def self.rev_total
    oil = top_vids.to_a[0..29]
    arr = []
    oil.each do |pump|
      arr.push(pump.revenue.to_f)
    end
  end




  def self.import(file)
    CSV.foreach(file.path, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
      money = row[2].gsub(/\,/,"").gsub(/\$/,"").gsub(/ /,"")
      
      if row[0].nil?
        alive =  true
      else
        alive = false
      end

      Video.create(
        title:           row[0],
        ytube_id:        row[1],
        views:           row[5],
        revenue:         money,
        dead:            alive
      )
    end
  end
end
