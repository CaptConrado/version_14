class AddProducerIdToClaim < ActiveRecord::Migration
  def change
    add_column :claims, :producer_id, :integer
  end
end
