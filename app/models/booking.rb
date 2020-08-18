class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :painting

  validates :starts_on, :ends_on, :total_price, :state, presence: true

  validates :starts_on, :ends_on, availability: true
  validate :end_date_after_start_date

  validates :total_price, numericality: true

  validates :state, acceptance: { accept: [“accepted”, “refused”, “pending”] }

end
