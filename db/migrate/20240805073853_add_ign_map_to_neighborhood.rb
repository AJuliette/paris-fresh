class AddIgnMapToNeighborhood < ActiveRecord::Migration[7.1]
  def change
    add_column :neighborhoods, :ign_map, :string
  end
end
