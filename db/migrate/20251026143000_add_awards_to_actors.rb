class AddAwardsToActors < ActiveRecord::Migration[7.1]
  def change
    add_column :actors, :awards, :text
  end
end
