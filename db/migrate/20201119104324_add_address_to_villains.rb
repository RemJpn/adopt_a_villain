class AddAddressToVillains < ActiveRecord::Migration[6.0]
  def change
    add_column :villains, :address, :string
  end
end
