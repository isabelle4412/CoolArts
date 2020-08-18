# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# user = User.create!(first_name: "yoann", last_name: "bo", email: "fEfo@gmail.com", password: 123456)
# user1 = User.create!(first_name: "yo", last_name: "bon", email: "yoyA@gmai.com", password: 1234567)
# painting1 = Painting.create!(name: 'joconae', description:'beau tab', address: '11 rue', price_per_day: 21, user_id: 1)
# painting2 = Painting.create!(name: 'bobo', description:'beau tab', address: '17 rue', price_per_day: 21, user_id: 2)
# painting3 = Painting.create!(name: 'popo', description:'beau fa', address: '12 rue', price_per_day: 20, user_id: 3)
# painting4 = Painting.create!(name: 'jojo', description:'beau loo', address: '16 rue', price_per_day: 21, user_id: 4)
# painting5 = Painting.create!(name: 'joja', description:'beau gui', address: '15 rue', price_per_day: 21, user_id: 5)
# painting6 = Painting.create!(name: 'joco', description:'beau yui', address: '14 rue', price_per_day: 21, user_id: 6)
# painting7 = Painting.create!(name: 'jonde', description:'beau lkj', address: '13 rue', price_per_day: 21, user_id: 7)

puts “Cleaning database...”
# Booking.destroy_all
Painting.destroy_all
User.destroy_all
puts “Creating users..”
tommie = {email: “tom@mail.com”, password: “password”, first_name: “Tommie” , last_name: “Petit” }
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



# user = User.create!(email: "yo@gmail.com", login: '123456', first_name: "yo", last_name:"bo")
