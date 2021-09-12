# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all data..."
User.destroy_all 
Password.destroy_all

puts "Seeding users..."
User.create(name:"Char", username:"char", password:"char", password_confirmation:"char")
User.create(name:"iryna", username:"iryna", password:"iryna",password_confirmation:"iryna")

puts "Seeding passwords..."
User.find(1).passwords.create(key:"Work Log-in", charm: "my_username", chain:"work")
User.find(1).passwords.create(key:"Wells Fargo", charm: "my_username", chain:"bank")
User.find(1).passwords.create(key:"Email", charm: "my_username", chain:"email")

User.find(2).passwords.create(key:"Work Log-in", charm: "my_username", chain:"work")
User.find(2).passwords.create(key:"Wells Fargo", charm: "my_username", chain:"bank")
User.find(2).passwords.create(key:"Email", charm: "my_username", chain:"email")


