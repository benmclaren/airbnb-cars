# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create(email: "ben@gmail.com", password: "password")

User.create(email: "email1@gmail.com", password: "password")

User.create(email: "email2@gmail.com", password: "password")

User.create(email: "email3@gmail.com", password: "password")


Car.create(spec: "RX-8", manufacturer: "Mazda", address: "SE21 8AL", price: 120, user_id)
Car.create(spec: "Supra", manufacturer: "Toyota", address: "SE21 8AL", price: 250)
Car.create(spec: "GT-R", manufacturer: "Nissan", address: "SE21 8AL", price: 250)
Car.create(spec: "350Z ", manufacturer: "Nissan", address: "SE21 8AL", price: 120)
Car.create(spec: "Impreza", manufacturer: "Subaru", address: "SE21 8AL", price: 150)



