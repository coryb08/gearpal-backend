class ListingReservation < ApplicationRecord
  belongs_to :listing
  belongs_to :reservation
end
