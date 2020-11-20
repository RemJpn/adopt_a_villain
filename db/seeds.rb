# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"


puts "Start"
puts "Clean DB"
Review.destroy_all
Booking.destroy_all
Villain.destroy_all
User.destroy_all

puts "Seeding admin"

new_user = User.new(
  first_name: "Benoit",
  last_name: "Calin",
  email: "admin@admin.com",
  password: "123456",
  is_villain: false
  )
new_user.photo.attach(io: File.open('app/assets/images/benoit.png'), filename: 'benoit.png', content_type: 'image/png')
new_user.save!

puts "Admin saved"

puts "Seeding users and villains"

puts "Seeding user1"
user1 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "123456",
  is_villain: true
)
user1.save!
villain1 = Villain.new(
  name: "Harley Quinn"
  description: Faker::GreekPhilosophers.quote,
  nastiness: 3,
  daily_price: rand(20..3000),
  address: "Merignac",
  user: user1
)
villain1.photo.attach(io: File.open('app/assets/images/Harley_quinn_photo.jpg'), filename: 'Harley_quinn_photo.jpg', content_type: 'image/jpg')
villain1.poster.attach(io: File.open('app/assets/images/Harley_Quinn.png'), filename: 'Harley_Quinn.png', content_type: 'image/png')
villain1.save!


puts "Seeding user2"
user2 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "123456",
  is_villain: true
)
user2.save!
villain2 = Villain.new(
    name: "Catwoman"
    description: Faker::GreekPhilosophers.quote,
    nastiness: 2,
    daily_price: rand(20..3000),
    address: "Merignac",
    user: user2
)
villain2.photo.attach(io: File.open('app/assets/images/catwoman_photo.jpg'), filename: 'catwoman_photo.jpg', content_type: 'image/jpg')
villain2.poster.attach(io: File.open('app/assets/images/Catwoman.png'), filename: 'Catwoman.png', content_type: 'image/png')
villain2.save!

puts "Seeding user3"
user3 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "123456",
  is_villain: true
)
user3.save!
villain3 = Villain.new(
    name: "Malificient"
    description: Faker::GreekPhilosophers.quote,
    nastiness: 5,
    daily_price: rand(20..3000),
    address: "Cenon",
    user: user3
)
villain3.photo.attach(io: File.open('app/assets/images/maleficient_photo.jpg'), filename: 'maleficient_photo.jpg', content_type: 'image/jpg')
villain3.poster.attach(io: File.open('app/assets/images/Maleficient.png'), filename: 'Maleficient.png', content_type: 'image/png')
villain3.save!

puts "Seeding user4"
user4 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "123456",
  is_villain: true
)
user4.save!
villain4 = Villain.new(
    name: "Cersei Lannister"
    description: Faker::GreekPhilosophers.quote,
    nastiness: 5,
    daily_price: rand(20..3000),
    address: "Bouiliac",
    user: user4
)
villain4.photo.attach(io: File.open('app/assets/images/cersei_lannister_photo.jpg'), filename: 'cersei_lannister_photo.jpg', content_type: 'image/jpg')
villain4.poster.attach(io: File.open('app/assets/images/Cersei.png'), filename: 'Cersei.png', content_type: 'image/png')
villain4.save!

puts "Seeding user5"
user5 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "123456",
  is_villain: true
)
user5.save!
villain5 = Villain.new(
    name: "Thanos"
    description: Faker::GreekPhilosophers.quote,
    nastiness: 4,
    daily_price: rand(20..3000),
    address: "Bordeaux",
    user: user5
)
villain5.photo.attach(io: File.open('app/assets/images/thanos_photo.png'), filename: 'thanos_photo.jpg', content_type: 'image/jpg')
villain5.poster.attach(io: File.open('app/assets/images/Thanos.png'), filename: 'Thanos.png', content_type: 'image/png')
villain5.save!

puts "Seeding user6"
user6 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "123456",
  is_villain: true
)
user6.save!
villain6 = Villain.new(
    name: "Dracula"
    description: Faker::GreekPhilosophers.quote,
    nastiness: 2,
    daily_price: rand(20..3000),
    address: "Bordeaux",
    user: user6
)
villain6.photo.attach(io: File.open('app/assets/images/dracula_photo.jpg'), filename: 'dracula_photo.jpg', content_type: 'image/jpg')
villain6.poster.attach(io: File.open('app/assets/images/Dracula.png'), filename: 'Dracula.png', content_type: 'image/png')
villain6.save!

puts "Seeding user7"
user7 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "123456",
  is_villain: true
)
user7.save!
villain7 = Villain.new(
    name: "Darth Vader"
    description: Faker::GreekPhilosophers.quote,
    nastiness: 4,
    daily_price: rand(20..3000),
    address: "Bordeaux",
    user: user7
)
villain7.photo.attach(io: File.open('app/assets/images/darth_vador_photo.jpg'), filename: 'darth_vador_photo.jpg', content_type: 'image/jpg')
villain7.poster.attach(io: File.open('app/assets/images/Darth_Vader.png'), filename: 'Darth_Vader.png', content_type: 'image/png')
villain7.save!



# 20.times do
#   new_user = User.new(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     password: "123456",
#     is_villain: true
#    )

#   new_user.save!

#   file = URI.open('https://cache.desktopnexus.com/thumbseg/2358/2358429-bigthumbnail.jpg')
#   # file_poster = URI.open('<%= image_tag "drax.png"%>')
#   # https://vignette.wikia.nocookie.net/agotmod/images/9/95/Kingrobert.jpg/revision/latest/top-crop/width/360/height/450?cb=20181008132401

#   new_villain = Villain.new(
#     name: Faker::Superhero.unique.name,
#     description: Faker::GreekPhilosophers.quote,
#     nastiness: rand(1..5),
#     daily_price: rand(20..3000),
#     address: "Bordeaux",
#     user: new_user
#     )
#   new_villain.photo.attach(io: file, filename: 'placeholder.jpg', content_type: 'image/jpg')
#   new_villain.poster.attach(io: File.open('app/assets/images/drax.png'), filename: 'placeholder.png', content_type: 'image/png')


#   p new_villain.name

#   new_villain.save!

# end


puts "Finish"
