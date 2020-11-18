# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Start"
puts "Clean DB"
Booking.destroy_all
Villain.destroy_all
User.destroy_all

puts "Seeding..."

20.times do
  new_user = User.new
  new_user.first_name = Faker::Name.first_name
  new_user.last_name = Faker::Name.last_name
  new_user.email = Faker::Internet.email
  new_user.password = "123456"
  new_user.is_villain = true

  new_user.save!

  new_villain = Villain.new
  p new_villain.name = Faker::Superhero.unique.name
  new_villain.description = Faker::GreekPhilosophers.quote
  new_villain.nastiness = rand(1..5)
  new_villain.daily_price = rand(20..3000)
  new_villain.user = new_user

  new_villain.save!

end


puts "Finish"
