# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bristol = Restaurant.new(name: "Epicure", category: "french")
surprix = Restaurant.new(name: "Surpriz", category: "french", address: "150 avenue du general de gaulle", phone_number: "077777777")
kebab = Restaurant.new(name: "Kebab", category: "french", address: "150 avenue du general de gaulle", phone_number: "0777c7777")
chinois = Restaurant.new(name: "Asiatique", category: "french", address: "150 avenue du general de gaulle", phone_number: "077777777")
