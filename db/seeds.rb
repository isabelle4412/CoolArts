# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
# Booking.destroy_all
# Painting.destroy_all
User.destroy_all

puts "Creating users.."

tommie = {email: "tom@mail.com", encrypted_password: "password", first_name: "Tommie" , last_name: "Petit" }
isabelle = {email: "isabelle@mail.com", encrypted_password: "password", first_name: "Isabelle" , last_name: "Pouget" }
yohann = {email: "yohann@mail.com", encrypted_password: "password", first_name: "Yohann" , last_name: "Bonamy" }
zoe = {email: "zoe@mail.com", encrypted_password: "password", first_name: "Zoé" , last_name: "Pralus" }

[tommie, isabelle, yohann, zoe ].each do |attributes|
  user = User.create(attributes)
  puts "Created #{user.first_name}"

end
puts "Finished!"


puts "Creating paintings.."



[tommie, isabelle, yohann, zoe ].each do |attributes|
  painting = Painting.create(attributes)
  puts "Created #{user.first_name}"

end

