class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :villain
  has_one :review

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :address, presence: true
  validates :total_price, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
