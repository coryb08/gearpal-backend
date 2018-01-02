class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date
  belongs_to :user
  has_many :listings
end
