class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :location, :borrower_rating, :lister_rating, :picture
  has_many :listings, as: :lister, :dependent => :destroy
  has_many :reservations,  as: :reserver, :dependent => :destroy
end
