# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning DB...'


Booking.destroy_all
User.destroy_all
Route.destroy_all


puts 'Creating routes'

route1 = Route.create(from: 'Gothenburg Port, Sweden', to: 'Shanghai Port, China')
route2 = Route.create(from: 'Antwerp Port, Belgium', to: 'Port Arthur, USA')


puts 'Creating Users'

User1 = User.create(shipper:'John Smith', company: 'Max Steel Inc.', email: 'js@imc.com', password: 'lewagon', password_confirmation: 'lewagon')
User2 = User.create(shipper:'Bob Hans', company: 'Coper Coil Inc.', email: 'bob@imc.com', password: 'lewagon', password_confirmation: 'lewagon')
User3 = User.create(shipper:'Kate Nelson', company: 'Gen Wheat Inc.', email: 'kate@imc.com', password: 'lewagon', password_confirmation: 'lewagon')


puts 'Creating Bookings'

Booking.create(user: User1, route: route1)
Booking.create(user: User2, route: route1)
Booking.create(user: User3, route: route1)


puts 'Done!'





