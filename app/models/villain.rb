class Villain < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_one_attached :photo
  has_one_attached :poster

  validates :daily_price, presence: true
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :nastiness, presence: true, inclusion: { in: 1..5 }
  validates :photo, presence: true
  validates :poster, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
