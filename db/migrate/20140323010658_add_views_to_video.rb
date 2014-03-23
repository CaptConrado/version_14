class AddViewsToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :views, :string
  end
end
