class Trip < ApplicationRecord
    belongs_to :user
    has_one :accomodation
    has_one :travel_option
    has_one :destination
end
