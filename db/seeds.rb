# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guide.destroy_all

Guide.create(name: 'Jokubas', phone_number: '8422 84920', city: 'Šiauliai', country: 'Lithuania', cost: 12)
Guide.create(name: 'Dmitry', phone_number: '8 499 829-22-80', city: 'Kazan', country: 'Russian Federation', cost: 25)
Guide.create(name: 'Chulsoo', phone_number: '02-312-3456', city: 'Hanyang', country: 'Korea (Republic of)', cost: 15)
Guide.create(name: 'Phoebe', phone_number: '202-555-0168', city: 'Portland', country: 'United States of America', cost: 20)
