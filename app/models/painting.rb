class Painting < ApplicationRecord
  belongs_to :user
  has_one :booking
end
