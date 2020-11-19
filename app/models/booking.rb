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
  validates :total_price, presence: true

  private

  # def end_date_after_start_date
  #   return if end_date.blank? || start_date.blank?

  #   if end_date < start_date
  #     errors.add(:end_date, "must be after the start date")
  #   end
  # end

end
