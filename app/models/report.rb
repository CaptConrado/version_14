class Report < ActiveRecord::Base
  has_and_belongs_to_many :videos, -> { where dead: false },
                  foreign_key: 'ytube_id'
end
