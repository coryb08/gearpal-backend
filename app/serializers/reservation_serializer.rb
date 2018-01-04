class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :listing_id
  belongs_to :reserver, polymorphic: true
  has_many :listings
end
