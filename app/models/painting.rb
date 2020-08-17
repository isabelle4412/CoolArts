class Painting < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :description, :address, :price_per_day, presence: :true
  validates :name, uniqueness: true

  validates :price_per_day, numericality: { only_integer: true }

end
