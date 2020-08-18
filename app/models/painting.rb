class Painting < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :name, :description, :address, :price_per_day, presence: :true
  validates :name, uniqueness: true

  validates :price_per_day, numericality: true

end
