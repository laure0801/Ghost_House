# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
User.create(first_name: "Jean", last_name: "Jacques", email:"jeanjacques@email.com", rating: 5)

# Offer.destroy_all
# Offer.create(user_id: 1, title: "Haunted mansion", description: "ça fait peur woulah", price: 50, address: "25 bouevard des champignons, 68422 Paris", disponibility: 31/10/2024)
