class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.string :title
      t.string :claim_id
      t.string :ytube_id
      t.string :producer

      t.timestamps
    end
  end
end
