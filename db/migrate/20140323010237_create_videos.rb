class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :ytube_id
      t.string :revenue
      t.string :report

      t.timestamps
    end
  end
end
