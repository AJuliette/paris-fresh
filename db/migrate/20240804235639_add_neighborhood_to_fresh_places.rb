class AddNeighborhoodToFreshPlaces < ActiveRecord::Migration[7.1]
  def change
    add_reference :fresh_places, :neighborhood, null: false, foreign_key: true
  end
end
