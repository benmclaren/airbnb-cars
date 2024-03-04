# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Car.destroy_all
User.destroy_all

user_1 = User.create!(email: "ben@gmail.com", password: "password")

user_2 = User.create!(email: "email1@gmail.com", password: "password")

user_3 = User.create!(email: "email2@gmail.com", password: "password")

user_4 = User.create!(email: "email3@gmail.com", password: "password")


rx8 = Car.create!(model: "RX-8", manufacturer: "Mazda", address: "SE21 8AL", price: 120, user: user_1)
supra = Car.create!(model: "Supra", manufacturer: "Toyota", address: "SE21 8AL", price: 250, user: user_2)
gtr = Car.create!(model: "GT-R", manufacturer: "Nissan", address: "SE21 8AL", price: 250, user: user_2)
impreza = Car.create!(model: "Impreza", manufacturer: "Subaru", address: "SE21 8AL", price: 150, user: user_3)

file = File.open("app/assets/images/rx8.jpeg")
rx8.photos.attach(io: file, filename: 'rx8.jpeg', content_type: "image/jpeg")
