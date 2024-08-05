class RemoveColumnsFromFountains < ActiveRecord::Migration[7.1]
  def change
    remove_column :fountains, :type
    remove_column :fountains, :neighborhood
  end
end
