# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
Offer.destroy_all

User.destroy_all
puts "bonjour"

User.create(first_name: "Jean", last_name: "Michel", email:"michmich@email.com", rating: 4, password: 123456)

puts "creating"

file = URI.open('https://cdn.pixabay.com/photo/2021/03/16/12/03/woman-6099577_960_720.jpg')
file2 = URI.open("https://cdn.pixabay.com/photo/2020/08/20/01/54/house-5502378_960_720.jpg")
file3 = URI.open("https://cdn.pixabay.com/photo/2021/09/14/14/04/castle-6624100_960_720.jpg")
file4 = URI.open("https://images.unsplash.com/photo-1617546127542-eb0dd8bdd52f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2072&q=80")
file5 = URI.open("https://images.unsplash.com/photo-1494376877685-d3d2559d4f82?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80")
file6 = URI.open("https://images.unsplash.com/photo-1514539079130-25950c84af65?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80")
file7 = URI.open("https://images.unsplash.com/photo-1622434607731-f81e9f5343d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
file8 = URI.open("https://images.unsplash.com/photo-1602769921397-e870d926e1e8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2065&q=80")

offer = Offer.create(user: User.all.first, title: "Haunted Mansion", description: "Enter my mother-in-law's haunted mansion. Her corpse is still inside. Come and keep her company!", price: 50, address: "10 Bd des Capucins, 48300 Langogne", disponibility: DateTime.new(2024/10/23))
offer.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

offer2 = Offer.create(user: User.all.first, title: "Haunted House of the White Lady", description: "Enter and discover a haunted house, the White Lady will surely be there to welcome you.", price: 75, address: "17 chemin sous les vignes, 57050 Metz", disponibility: DateTime.new(2024/10/23))
offer2.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')

offer3 = Offer.create(user: User.all.first, title: "Saint Charles Manor", description: "Come discover and explore this large manor with 100 rooms. You may not be alone.", price: 125, address: "2 rue Saint-Nicolas de Cours, 60127 Morienval", disponibility: DateTime.new(2024/10/23))
offer3.photos.attach(io: file3, filename: 'nes.png', content_type: 'image/png')

offer4 = Offer.create(user: User.all.first, title: "House in the Woods", description: "Charming isolated house near a forest. Quiet and well located, no one will be able to come and help the living who live there if you scare them too much.", price: 250, address: "54470 Saint-Julien-lès-Gorze", disponibility: DateTime.new(2024/10/23))
offer4.photos.attach(io: file4, filename: 'nes.png', content_type: 'image/png')

offer5 = Offer.create(user: User.all.first, title: "Quiet Cabin", description: "Tiny shack for 2 ghosts maximum. Isolated in the misty fields, the peace will be there for a quiet rest. Animals are accepted.", price: 30, address: "Laplaud E, 87260 Saint-Jean-Ligoure", disponibility: DateTime.new(2024/10/23))
offer5.photos.attach(io: file5, filename: 'nes.png', content_type: 'image/png')

offer6 = Offer.create(user: User.all.first, title: "Ghost Castle", description: "This large castle will be an excellent home for a stay. However, you will probably not be alone, people still live there! The former owners will welcome you with pleasure. ", price: 50, address: "route de la Plage, 19160 Neuvic", disponibility: DateTime.new(2024/10/23))
offer6.photos.attach(io: file6, filename: 'nes.png', content_type: 'image/png')

offer7 = Offer.create(user: User.all.first, title: "The Old Church", description: "Sure, it's a church, and we know it's your last place before the grave, but you'll be fine there! We promise you that.", price: 45, address: "29 Av. de la République, 87260 Pierre-Buffière  ", disponibility: DateTime.new(2024/10/23))
offer7.photos.attach(io: file7, filename: 'nes.png', content_type: 'image/png')

offer8 = Offer.create(user: User.all.first, title: "Phantom Manor", description: "The famous haunted house attraction! But thanks to you, it really will be now! During the day, many activities to scare the visitors are possible. At night, the calm will be back in the house. There will be no boredom.", price: 100, address: "Parc Disneyland Frontierland, 77700 Chessy", disponibility: DateTime.new(2024/10/23))
offer8.photos.attach(io: file8, filename: 'nes.png', content_type: 'image/png')

puts "finit"
