class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.string :twitter
      t.boolean :collab

      t.timestamps
    end
  end
end
