class Report < ActiveRecord::Base
  has_and_belongs_to_many :videos, -> { where dead: false },
                  foreign_key: 'ytube_id'
  # belongs_to :video
  # has_many   :line_items
  # before_save :make_items

  def tester
    Video.all[0..29]
  end


  def rev
    poo = Video.all 
    poo.group(:ytube_id).revenue


    # Video.all.group('ytube_id').revenue
  end
  # def fee 
  #   a = amount
  #   if video.special?
  #     BigDecimal.new(a.match(/\d*\.?\d+/)[0])*0.4
  #   else  
  #     BigDecimal.new(a.match(/\d*\.?\d+/)[0])*0.5
  #   end
  # end
  
  # def clippy
  #   video.collab_count
  # end

  # def your_cut
  #   fee/clippy #formula works for revenue data
  # end

  # def item_collect
  #   video.clips.to_a #this creates an array of clip objects
  # end

  # def this_month
  #   month
  # end

  # def make_items
  #   item_collect.each do |item|
  #     LineItem.create!(:month => month,:clip_id => item.id, :amount => your_cut)
  #   end
  # end



end
