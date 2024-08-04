class CreateFreshPlaces < ActiveRecord::Migration[7.1]
  def change
    create_table :fresh_places do |t|
      t.string :name
      t.integer :neighborhood
      t.string :street_address
      t.integer :open_data_identifier
      t.boolean :free
      t.integer :type
      t.timestamps
    end
  end
end
