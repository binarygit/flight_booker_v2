# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flight.destroy_all
Airport.destroy_all

Airport.create!([
  {airport_code: 'ktm'},
  {airport_code: 'pkr'}
])

ktm_airport = Airport.first
pkr_airport = Airport.last

ktm_pkr = Flight.create!(departure_id: ktm_airport.id, arrival_id: pkr_airport.id,
               start_date: Date.today, duration: '45 minutes')
pkr_ktm = Flight.create!(departure_id: pkr_airport.id, arrival_id: ktm_airport.id,
               start_date: Date.tomorrow, duration: '1 hour')
