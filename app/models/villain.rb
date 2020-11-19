class Villain < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_one_attached :photo

  validates :daily_price, presence: true
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :nastiness, presence: true, inclusion: { in: 1..5 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
