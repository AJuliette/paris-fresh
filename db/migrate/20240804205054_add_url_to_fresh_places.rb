class AddUrlToFreshPlaces < ActiveRecord::Migration[7.1]
  def change
    add_column :fresh_places, :url, :string
  end
end
