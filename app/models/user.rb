class User < ApplicationRecord
    has_many :paintings
    has_many :bookings

    validates :first_name, :last_name, presence: :true
    validates :first_name, uniqueness: { scope: :last_name }

end
