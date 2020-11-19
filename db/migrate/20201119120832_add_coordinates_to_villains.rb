class AddCoordinatesToVillains < ActiveRecord::Migration[6.0]
  def change
    add_column :villains, :latitude, :float
    add_column :villains, :longitude, :float
  end
end
