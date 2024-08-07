class CreateGreenSpaces < ActiveRecord::Migration[7.1]
  def change
    create_table :green_spaces do |t|
      t.string :name
      t.string :address
      t.string :neighborhood_number
      t.references :neighborhood, null: false, foreign_key: true

      t.timestamps
    end
  end
end
