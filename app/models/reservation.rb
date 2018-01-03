class Reservation < ApplicationRecord
  belongs_to :reserver, polymorphic: true
  has_many :listing_reservations
  has_many :listings, through: :listing_reservations
end
