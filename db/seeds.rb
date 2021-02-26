# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Cocktail.destroy_all
Ingredient.destroy_all

puts "Add cocktails"
Cocktail.create!(name: "Bikini")
Cocktail.create!(name: "Blue Lagon")
Cocktail.create!(name: "Frozen Margarita")
Cocktail.create!(name: "Green Fury")
Cocktail.create!(name: "Mangalicious")
Cocktail.create!(name: "Virgin Colada")
puts "cocktails created"

puts "Add ingrdedients"
ingredients = [["Menthe", "mint"], ["Citron Vert", "green-lime"], ["Citron Jaune", "lemon"], ["Pamplemousse", "grapefruit"], ["Blanc d'Oeuf", "egg"], ["Fraises", "strawberry"], ["Jus de Citron Vert", "green-lemon-juice"],
              ["Jus d'Orange", "orange-juice"], ["Glaçons", "ice"], ["Schweppes", "schweppes"], ["Coca Cola", "cola"], ["Limonade", "lemonade"], ["Sirop de Menthe", "mint-juice"], ["Thé Vert", "green-tea"], ["Sucre", "sugar"],
              ["Jus d'Ananas", "ananas-juice"], ["Lait de Coco", "coconut"], ["Mangue", "mango"], ["Yaourt Nature", "yoghurt"], ["Eau Minérale", "water"], ["Concombre", "cucumber"], ["Sirop d'Orgeat", "orgeat"],
              ["Gingembre", "ginger"], ["Sirop de Fraise", "strawberry-juice"], ["Sirop de Grenadine", "grenadine"], ["Kiwi", "kiwi"]]

ingredients.each { |ingredient| Ingredient.create!(name: ingredient[0], icon: "#{ingredient[1]}.png") }
puts "Ingredients created"
