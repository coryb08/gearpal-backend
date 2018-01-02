class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :location, :borrower_rating, :lister_rating, :picture
  has_many :listings
  has_many :reservations
end
