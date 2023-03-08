# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "John", user_id: 1)
User.create(username: "Jane", user_id: 2)
User.create(username: "Christina", user_id: 3)
User.create(username: "Kevin", user_id: 4)
User.create(username: "Eowyn", user_id: 5)
User.create(username: "Frodo", user_id: 6)
User.create(username: "Sam", user_id: 7)
User.create(username: "Legolas", user_id: 8)
User.create(username: "Boromir", user_id: 9)
User.create(username: "Aragorn", user_id: 10)
User.create(username: "Gandalf", user_id: 11)

Item.create(name: "shitake mushrooms", photo_url: "https://robohash.org/mushroom",quantity:3,user_id:8)
Item.create(name: "orange juice", photo_url: "https://robohash.org/orangejuice",quantity:5,user_id:3)
Item.create(name: "spinach", photo_url: "https://robohash.org/spinach",quantity:2,user_id:1)
Item.create(name: "diet coke", photo_url: "https://robohash.org/dietcoke",quantity:8,user_id:3)
Item.create(name: "sweet potato", photo_url: "https://robohash.org/sweetpotato",quantity:6,user_id:2)
Item.create(name: "potato", photo_url: "https://robohash.org/potato",quantity:2,user_id:4)
Item.create(name: "banana", photo_url: "https://robohash.org/banana",quantity:5,user_id:5)
Item.create(name: "ketchup", photo_url: "https://robohash.org/ketchup",quantity:1,user_id:6)
Item.create(name: "oil", photo_url: "https://robohash.org/oil",quantity:2,user_id:7)
Item.create(name: "hand soap", photo_url: "https://robohash.org/soap",quantity:1,user_id:9)
Item.create(name: "tissue", photo_url: "https://robohash.org/tissue",quantity:12,user_id:10)
Item.create(name: "battery", photo_url: "https://robohash.org/battery",quantity:15,user_id:8)
Item.create(name: "butter", photo_url: "https://robohash.org/butter",quantity:1,user_id:11)
