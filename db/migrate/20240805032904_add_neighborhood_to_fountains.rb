class AddNeighborhoodToFountains < ActiveRecord::Migration[7.1]
  def change
    add_reference :fountains, :neighborhood, null: false, foreign_key: true
  end
end
