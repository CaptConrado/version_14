class AddDeadToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :dead, :boolean
  end
end
