class AddModelToFountains < ActiveRecord::Migration[7.1]
  def change
    add_column :fountains, :model, :string
  end
end
