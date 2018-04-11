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
route3 = Route.create(from: 'Antwerp Port, Belgium', to: 'Hamburg Hafen, Germany')
route4 = Route.create(from: 'Shanghai', to: 'Duisburg')


puts 'Creating Users'

User1 = User.create(shipper:'John Smith', company: 'Max Steel Inc.', email: 'js@imc.com', password: 'lewagon', password_confirmation: 'lewagon')
User2 = User.create(shipper:'Bob Hans', company: 'Coper Coil Inc.', email: 'bob@imc.com', password: 'lewagon', password_confirmation: 'lewagon')
User3 = User.create(shipper:'Kate Nelson', company: 'Gen Wheat Inc.', email: 'kate@imc.com', password: 'lewagon', password_confirmation: 'lewagon')

puts 'Creating MOT'

ocean = 'Ocean'
air = 'Air'
rail = 'Rail'

puts 'Creating Bookings'

b1 = Booking.create(user: User1, route: route1, transport: ocean, freight: 1590 )
b1.update_attribute :created_at, (rand*10).days.ago
b2 = Booking.create(user: User2, route: route1, transport: ocean, freight: 1780)
b2.update_attribute :created_at, (rand*10).days.ago
b3 = Booking.create(user: User3, route: route1, transport: ocean, freight: 1460)
b3.update_attribute :created_at, (rand*10).days.ago
b4 = Booking.create(user: User3, route: route2, transport: ocean, freight: 1210)
b4.update_attribute :created_at, (rand*10).days.ago
b5 = Booking.create(user: User3, route: route2, transport: air, freight: 1320)
b5.update_attribute :created_at, (rand*10).days.ago
b6 = Booking.create(user: User2, route: route3, transport: rail, freight: 2220)
b6.update_attribute :created_at, (rand*10).days.ago
b7 = Booking.create(user: User2, route: route4, transport: ocean, freight: 1580)
b7.update_attribute :created_at, (rand*10).days.ago


puts 'Done!'





