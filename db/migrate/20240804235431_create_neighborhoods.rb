class CreateNeighborhoods < ActiveRecord::Migration[7.1]
  def change
    create_table :neighborhoods do |t|
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
