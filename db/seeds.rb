# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Car.destroy_all
User.destroy_all

puts "Creating users..."
  
ben = User.create!(first_name: 'Ben', last_name: 'McLaren', username: 'DriftKing', email: "ben@gmail.com", password: "123456")

ruby = User.create!(first_name: 'Ruby', last_name: 'Rails', username: 'rubyrails99', email: "rubyrails99@gmail.com", password: "123456")

ife = User.create!(first_name: 'Ife', last_name: 'Odugbesan', username: 'itsifz', email: "ifeodugbesan@gmail.com", password: "123456")

alan = User.create!(first_name: 'Alán', last_name: 'Rodriguez', username:'ElNumeroNueve', email: "alan@gmail.com", password: "123456")

puts "Users created!"

puts "Attaching avatars..."

ben_avatar = File.open("app/assets/images/uifaces-cartoon-image-1.jpg")
ben.avatar.attach(io: ben_avatar, filename: 'uifaces-cartoon-image-1.jpg', content_type: "image/jpg")

ruby_avatar = File.open("app/assets/images/uifaces-cartoon-image-2.jpg")
ruby.avatar.attach(io: ruby_avatar, filename: 'uifaces-cartoon-image-2.jpg', content_type: "image/jpg")

ife_avatar = File.open("app/assets/images/uifaces-cartoon-image-3.jpg")
ife.avatar.attach(io: ife_avatar, filename: 'uifaces-cartoon-image-3.jpg', content_type: "image/jpg")

alan_avatar = File.open("app/assets/images/uifaces-cartoon-image-4.jpg")
alan.avatar.attach(io: alan_avatar, filename: 'uifaces-cartoon-image-4.jpg', content_type: "image/jpg")

puts "avatars attached!"

puts "Creating Cars..."

rx8 = Car.create!(model: "RX-8", manufacturer: "Mazda", address: "Dulwich", price: 120, user: ben, description: 'The Mazda RX-8 is a sports car manufactured by Japanese automobile manufacturer Mazda between 2002 and 2012.', power: '192', transmission: 'Manual', body_style: 'Coupé', layout: 'RWD', engine: '1.3L', year: '2004')
mx5 = Car.create!(model: "MX-5", manufacturer: "Mazda", address: "Chelsea", price: 100, user: ruby, description: 'The Mazda MX-5 is a lightweight two-passenger sports car manufactured and marketed by Mazda with a front mid-engine, rear-wheel-drive layout.', power: '128', transmission: 'Manual', body_style: 'Convertible', layout: 'RWD', engine: '1.8L', year: '1995')
gtr = Car.create!(model: "GT-R", manufacturer: "Nissan", address: "Surrey Quays", price: 250, user: ife)
nsx = Car.create!(model: "NSX", manufacturer: "Honda", address: "Walthamstow", price: 200, user: alan)

puts "Cars created!"

puts "Attaching pictures..."

# rx8
file = File.open("app/assets/images/rx8.jpeg")
rx8.photos.attach(io: file, filename: 'rx8.jpeg', content_type: "image/jpeg")

file = File.open("app/assets/images/rx8-2.jpeg")
rx8.photos.attach(io: file, filename: 'rx8-2.jpeg', content_type: "image/jpeg")

file = File.open("app/assets/images/rx8-3.jpeg")
rx8.photos.attach(io: file, filename: 'rx8-3.jpeg', content_type: "image/jpeg")

file = File.open("app/assets/images/rx8-4.jpeg")
rx8.photos.attach(io: file, filename: 'rx8-4.jpeg', content_type: "image/jpeg")

# mx5
file = File.open("app/assets/images/mx5.jpeg")
mx5.photos.attach(io: file, filename: 'mx5.jpeg', content_type: "image/jpeg")

# gtr
file = File.open("app/assets/images/gtr.jpeg")
gtr.photos.attach(io: file, filename: 'gtr.jpeg', content_type: "image/jpeg")

# nsx
file = File.open("app/assets/images/nsx.jpeg")
nsx.photos.attach(io: file, filename: 'nsx.jpeg', content_type: "image/jpeg")

puts "Pictures attached!"
puts "Seed Complete!"
