class CreateVillains < ActiveRecord::Migration[6.0]
  def change
    create_table :villains do |t|
      t.string :name
      t.text :description
      t.integer :nastiness
      t.integer :daily_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
