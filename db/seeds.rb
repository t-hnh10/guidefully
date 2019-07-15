# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guide.create(name: 'Lee', phone_number: '0404 040 404', city: 'Quantum City', country: 'Lithuania', cost: 12)
Guide.create(name: 'Dmitry', phone_number: '0404 040 404', city: 'Kazan', country: 'Russia', cost: 25)
Guide.create(name: 'Chulsoo', phone_number: '0404 040 404', city: 'Hangang', country: 'South Korea', cost: 15)
Guide.create(name: 'Phoebe', phone_number: '0404 040 404', city: 'New York City', country: 'United States of America', cost: 20)

Traveller.create(name: 'Fred', phone_number: '0404 040 404')