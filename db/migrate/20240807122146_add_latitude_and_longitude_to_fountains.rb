class AddLatitudeAndLongitudeToFountains < ActiveRecord::Migration[7.1]
  def change
    add_column :fountains, :longitude, :float
    add_column :fountains, :latitude, :float
  end
end
