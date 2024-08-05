class AddColumnsToFountains < ActiveRecord::Migration[7.1]
  def change
    add_column :fountains, :name, :string
    add_column :fountains, :neighborhood_number, :string
  end
end
