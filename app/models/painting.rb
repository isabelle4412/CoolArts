class Painting < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, :description, :address, :price_per_day, presence: :true
  validates :name, uniqueness: true

  validates :price_per_day, numericality: true

end
