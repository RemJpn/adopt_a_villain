class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :villain
  has_one :review

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :address, presence: true
  validates :post_code, presence: true
  validates :city, presence: true
end
