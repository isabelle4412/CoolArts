class User < ApplicationRecord
    has_many :paintings
    has_many :booking
end
