class AddLatitudeAndLongitudeToFreshPlaces < ActiveRecord::Migration[7.1]
  def change
    add_column :fresh_places, :longitude, :float
    add_column :fresh_places, :latitude, :float
  end
end
