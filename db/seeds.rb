# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts “Cleaning database...”
# Booking.destroy_all
Painting.destroy_all
User.destroy_all
puts “Creating users..”
tommie = { email: “tom@mail.com”, password: “password”, first_name: “Tommie” , last_name: “Petit” }
isabelle = {email: “isabelle@mail.com”, password: “password”, first_name: “Isabelle” , last_name: “Pouget” }
yohann = {email: “yohann@mail.com”, password: “password”, first_name: “Yohann” , last_name: “Bonamy” }
zoe = {email: “zoe@mail.com”, password: “password”, first_name: “Zoé” , last_name: “Pralus” }
[tommie, isabelle, yohann, zoe ].each do |attributes|
  user = User.create!(attributes)
  puts “Created #{user.first_name}”
end
puts “Finished!”
puts “Creating paintings..”
file = URI.open(‘https://res.cloudinary.com/doakgwppy/image/upload/v1597746865/paintings/bruce-warrington-oGSCKjhcJ9o-unsplash_kd6g3y.jpg’)
paint = Painting.new(name: “Women pop lips”, description: “Un tableau magique du celèbre artiste Bruce Warrington où les couleurs se mélangent dans une harmonie parfaite”, address: “45 rue Paul Bellamy Nantes”, price_per_day: 2)
paint.photo.attach(io: file, filename: ‘poplips.png’, content_type: ‘image/png’)
paint.user = User.where(email: “tom@mail.com”).first
paint.save
puts “Created #{paint.name}”
file = URI.open(‘https://res.cloudinary.com/doakgwppy/image/upload/v1597747332/paintings/mike-dorner-sf_1ZDA1YFw-unsplash_raearu.jpg’)
paint = Painting.new(name: “Banana”, description: “Une oeuvre révolutionnaire au couleur chattoyante, la réinvention de la banane”, address: “Paris 17 ème”, price_per_day: 1)
paint.photo.attach(io: file, filename: ‘banana.png’, content_type: ‘image/png’)
paint.user = User.where(email: “tom@mail.com”).first
paint.save
puts “Created #{paint.name}”