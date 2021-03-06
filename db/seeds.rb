# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create(username: "dansbands", location: "Manhattan", borrower_rating: 4.3, lister_rating: 4.5, picture: "https://avatars3.githubusercontent.com/u/28971854?s=460&v=4")
u2 = User.create(username: "coryb08", location: "Brooklyn", borrower_rating: 4.5, lister_rating: 4.7, picture: "https://avatars0.githubusercontent.com/u/29523975?s=460&v=4")
u3 = User.create(username: "erickalexander", location: "Staten Island", borrower_rating: 4.7, lister_rating: 4.9, picture: "https://avatars2.githubusercontent.com/u/23504970?s=460&v=4")



Listing.destroy_all

listing1 = Listing.create(lister: u1, title: "Shure SM 58", picture: "https://522bb370f5443d4fe5b9-f62de27af599bb6703e11b472beadbcc.ssl.cf2.rackcdn.com/product/list_image/10785/prod_img_sm58_m.jpg", price: 10, availability: true, location: "Staten Island, NY", condition: 'Fair', rating: 3)
listing2 = Listing.create(lister: u1, title: "Shure SM 87A", picture: "https://522bb370f5443d4fe5b9-f62de27af599bb6703e11b472beadbcc.ssl.cf2.rackcdn.com/product/list_image/7686/prod_img_sm87a_m.jpg", price: 20, availability: true, location: "Brooklyn, NY", condition: 'Worn', rating: 2)
listing3 = Listing.create(lister: u1, title: "Shure SM 58", picture: "https://522bb370f5443d4fe5b9-f62de27af599bb6703e11b472beadbcc.ssl.cf2.rackcdn.com/product/list_image/10785/prod_img_sm58_m.jpg", price: 10, availability: true, location: "Staten Island, NY", condition: 'Fair',rating: 3)
listing4 = Listing.create(lister: u1, title: "Shure SM 87A", picture: "https://522bb370f5443d4fe5b9-f62de27af599bb6703e11b472beadbcc.ssl.cf2.rackcdn.com/product/list_image/7686/prod_img_sm87a_m.jpg", price: 20, availability: true, location: "Brooklyn, NY", condition: 'Worn',rating: 2)
listing5 = Listing.create(lister: u1, title: "Shure SM 58", picture: "https://522bb370f5443d4fe5b9-f62de27af599bb6703e11b472beadbcc.ssl.cf2.rackcdn.com/product/list_image/10785/prod_img_sm58_m.jpg", price: 10, availability: true, location: "Staten Island, NY", condition: 'Fair',rating: 3)
listing6 = Listing.create(lister: u1, title: "Shure SM 87A", picture: "https://522bb370f5443d4fe5b9-f62de27af599bb6703e11b472beadbcc.ssl.cf2.rackcdn.com/product/list_image/7686/prod_img_sm87a_m.jpg", price: 20, availability: true, location: "Brooklyn, NY", condition: 'Worn',rating: 3)
listing7 = Listing.create(lister: u1, title: "Shure SM 58", picture: "https://522bb370f5443d4fe5b9-f62de27af599bb6703e11b472beadbcc.ssl.cf2.rackcdn.com/product/list_image/10785/prod_img_sm58_m.jpg", price: 10, availability: true, location: "Staten Island, NY", condition: 'Fair',rating: 3)
listing8 = Listing.create(lister: u1, title: "Shure SM 87A", picture: "https://522bb370f5443d4fe5b9-f62de27af599bb6703e11b472beadbcc.ssl.cf2.rackcdn.com/product/list_image/7686/prod_img_sm87a_m.jpg", price: 20, availability: true, location: "Brooklyn, NY", condition: 'Worn',rating: 1)
listing9 = Listing.create(lister: u1, title: "Shure SM 58", picture: "https://522bb370f5443d4fe5b9-f62de27af599bb6703e11b472beadbcc.ssl.cf2.rackcdn.com/product/list_image/10785/prod_img_sm58_m.jpg", price: 10, availability: true, location: "Brooklyn, NY", condition: 'Fair',rating: 3)
listing10 = Listing.create(lister: u1, title: "Shure SM 87A", picture: "https://522bb370f5443d4fe5b9-f62de27af599bb6703e11b472beadbcc.ssl.cf2.rackcdn.com/product/list_image/7686/prod_img_sm87a_m.jpg", price: 20, availability: true, location: "Staten Island, NY", condition: 'Worn',rating: 3)
listing11 = Listing.create(lister: u1, title: "Shure SM 58", picture: "https://522bb370f5443d4fe5b9-f62de27af599bb6703e11b472beadbcc.ssl.cf2.rackcdn.com/product/list_image/10785/prod_img_sm58_m.jpg", price: 10, availability: true, location: "Brooklyn, NY", condition: 'Fair',rating: 3)
listing12 = Listing.create(lister: u1, title: "Shure SM 87A", picture: "https://522bb370f5443d4fe5b9-f62de27af599bb6703e11b472beadbcc.ssl.cf2.rackcdn.com/product/list_image/7686/prod_img_sm87a_m.jpg", price: 20, availability: true, location: "Staten Island, NY", condition: 'Worn',rating: 1)


Reservation.destroy_all

reservation1 = Reservation.create(reserver: u2, name:listing1.title, start_date: "2018-01-02 19:00:46Z" , end_date:"2018-01-03 19:00:46Z", listings: [listing1])
