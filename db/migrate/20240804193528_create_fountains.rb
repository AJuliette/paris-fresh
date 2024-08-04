class CreateFountains < ActiveRecord::Migration[7.1]
  def change
    create_table :fountains do |t|
      t.integer :open_data_identifier 
      t.boolean :working
      t.string :street_number
      t.string :street_name
      t.string :neighborhood
      t.integer :type
      t.timestamps
    end
  end
end
