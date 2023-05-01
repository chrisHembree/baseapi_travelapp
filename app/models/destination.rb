class Destination < ApplicationRecord

    has_many :travel_options
    has_many :accommodations
end
