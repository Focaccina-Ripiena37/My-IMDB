class AddDetailsToActors < ActiveRecord::Migration[7.1]
  def change
    add_column :actors, :birthplace, :string
    add_column :actors, :net_worth, :integer
  end
end
