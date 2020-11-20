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
  first_name: "admin",
  last_name: "admin",
  email: "admin@admin.com",
  password: "123456",
  is_villain: true
  )

new_user.save!

puts "Admin saved"

puts "Seeding users and villains"



20.times do
  new_user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "123456",
    is_villain: true
   )

  new_user.save!

  file = URI.open('https://cache.desktopnexus.com/thumbseg/2358/2358429-bigthumbnail.jpg')
  # file_poster = URI.open('<%= image_tag "drax.png"%>')
  # https://vignette.wikia.nocookie.net/agotmod/images/9/95/Kingrobert.jpg/revision/latest/top-crop/width/360/height/450?cb=20181008132401

  new_villain = Villain.new(
    name: Faker::Superhero.unique.name,
    description: Faker::GreekPhilosophers.quote,
    nastiness: rand(1..5),
    daily_price: rand(20..3000),
    address: "Bordeaux",
    user: new_user
    )
  new_villain.photo.attach(io: file, filename: 'placeholder.jpg', content_type: 'image/jpg')
  new_villain.poster.attach(io: File.open('app/assets/images/drax.png'), filename: 'placeholder.png', content_type: 'image/png')


  p new_villain.name

  new_villain.save!

end


puts "Finish"
