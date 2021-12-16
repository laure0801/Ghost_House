# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
User.destroy_all
Offer.destroy_all
puts "bonjour"

User.create(first_name: "Jean", last_name: "Michel", email:"michmich@email.com", rating: 4, password: 123456)

puts "creating"

file = URI.open('https://cdn.pixabay.com/photo/2021/03/16/12/03/woman-6099577_960_720.jpg')
file2 = URI.open("https://cdn.pixabay.com/photo/2020/08/20/01/54/house-5502378_960_720.jpg")
file3 = URI.open("https://cdn.pixabay.com/photo/2021/09/14/14/04/castle-6624100_960_720.jpg")

offer = Offer.create(user_id: 1, title: "Haunted mansion", description: "ça fait peur woulah", price: 50, address: "25 bouevard des champignons, 68422 Paris", disponibility: DateTime.new(2024/10/23))
offer.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

offer2 = Offer.create(user_id: 1, title: "Haunted ", description: "ça fait peur ", price: 50, address: "25 bouevard des champignons, 68422 Metez", disponibility: DateTime.new(2024/10/23))
offer2.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')

offer3 = Offer.create(user_id: 1, title: "Haunted hoclqjbv", description: "lohnzlbne", price: 50, address: "25 bouevard des cimetieres, 68422 Paris", disponibility: DateTime.new(2024/10/23))
offer3.photos.attach(io: file3, filename: 'nes.png', content_type: 'image/png')

puts "finit"
