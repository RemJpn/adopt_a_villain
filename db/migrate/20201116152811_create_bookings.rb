class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.string :address
      t.string :post_code
      t.string :city
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true
      t.references :villain, null: false, foreign_key: true

      t.timestamps
    end
  end
end
