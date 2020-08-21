# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.firs



# user = User.create!(email: "yo@gmail.com", login: '123456', first_name: "yo", last_name:"bo")
require "open-uri"

puts "Cleaning database..."
Booking.destroy_all
Painting.destroy_all
User.destroy_all

puts "Creating users.."

tommie = {email: "tom@mail.com", password: "password", first_name: "Tommie" , last_name: "Petit" }
isabelle = {email: "leo@mail.com", password: "password", first_name: "Léo" , last_name: "Colocator" }
yohann = {email: "yohann@mail.com", password: "password", first_name: "Yohann" , last_name: "Bonamy" }
zoe = {email: "zoe@mail.com", password: "password", first_name: "Zoé" , last_name: "Pralus" }

[tommie, isabelle, yohann, zoe ].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.first_name}"

end
puts "Finished!"


puts "Creating paintings.."
file = URI.open('https://res.cloudinary.com/doakgwppy/image/upload/v1597746865/paintings/bruce-warrington-oGSCKjhcJ9o-unsplash_kd6g3y.jpg')
paint = Painting.new(name: "Women pop lips", description: "Un tableau magique du celèbre artiste Bruce Warrington où les couleurs se mélangent dans une harmonie parfaite", address: "45 rue Paul Bellamy, 44000 Nantes", price_per_day: 2)
paint.photo.attach(io: file, filename: 'poplips.png', content_type: 'image/png')
paint.user = User.where(email: "tom@mail.com").first
paint.save
puts "Created #{paint.name}"

file = URI.open('https://res.cloudinary.com/doakgwppy/image/upload/v1597747332/paintings/mike-dorner-sf_1ZDA1YFw-unsplash_raearu.jpg')
paint = Painting.new(name: "Banana", description: "Une oeuvre révolutionnaire au couleur chattoyante, la réinvention de la banane ! Gardez la banane et louez ce tableau", address: "82 Galerie des Damiers, Courbevoie", price_per_day: 1)
paint.photo.attach(io: file, filename: 'banana.png', content_type: 'image/png')
paint.user = User.where(email: "tom@mail.com").first
paint.save
puts "Created #{paint.name}"

file = URI.open('https://res.cloudinary.com/doakgwppy/image/upload/v1597747332/paintings/mike-von-aaWaG-raMNw-unsplash_ebpzta.jpg')
paint = Painting.new(name: "women", description: "Quoi de mieux qu'un tableau de Mike Trioupy dans votre salon ? Surprenant, vivifiant : on ne se lasse pas de regarder ce tableau !!", address: "Place Jean Jaures, 42000 Saint-Etienne", price_per_day: 3)
paint.photo.attach(io: file, filename: 'women.png', content_type: 'image/png')
paint.user = User.where(email: "tom@mail.com").first
paint.save
puts "Created #{paint.name}"

file = URI.open('https://res.cloudinary.com/doakgwppy/image/upload/v1597747332/paintings/steve-johnson-m6naQNiljrY-unsplash_evoynx.jpg')
paint = Painting.new(name: "flower", description: "Nature morte mais tableau bien vivant : il enchante votre salon et vous fait apprécier de nouveau la beauté de la nature", address: "30 Rue des Fosses, 44270 La Marne", price_per_day: 1)
paint.photo.attach(io: file, filename: 'color.png', content_type: 'image/png')
paint.user = User.where(email: "leo@mail.com").first
paint.save
puts "Created #{paint.name}"

file = URI.open('https://res.cloudinary.com/doakgwppy/image/upload/v1597747332/paintings/europeana-ryiQ0NISRJ4-unsplash-2_cpgjvr.jpg')
paint = Painting.new(name: "colors", description: "Explosion de couleur ! Ce tableau respire la joie de vivre, c'est une galaxie émouvante de couleurs ! Embrassez la vie, louez ce tableau ", address: "Place du Pilori 44036 Nantes", price_per_day: 3)
paint.photo.attach(io: file, filename: 'color.png', content_type: 'image/png')
paint.user = User.where(email: "leo@mail.com").first
paint.save
puts "Created #{paint.name}"

file = URI.open('https://res.cloudinary.com/doakgwppy/image/upload/v1597747342/paintings/birmingham-museums-trust-9pOXS0ZGPDM-unsplash_r1jfgz.jpg')
paint = Painting.new(name: "Maison sur la colline", description: "Ce tableau de l'artiste Isabelle vous epoustouflera vous et vos invités. Au premier abord enfantin, il impressionne par ses détails multiples et travaillés !! Grande Artiste en devenir, impressionnez vos amis avec vos tableaux", address: "41 Rue Jobin, 13003 Marseille", price_per_day: 4)
paint.photo.attach(io: file, filename: 'maison.png', content_type: 'image/png')
paint.user = User.where(email: "leo@mail.com").first
paint.save
puts "Created #{paint.name}"

file = URI.open('https://res.cloudinary.com/doakgwppy/image/upload/v1597747342/paintings/birmingham-museums-trust-G1Z0cIMYHVM-unsplash-2_jhhx6f.jpg')
paint = Painting.new(name: "Paysans attristés par la sécheresse", description: "Retrouvez vos racines d'antan à travers ce magnifique tableau d'un peintre anonyme. Plongez dans la france rurale du 18 ème siècle et partagez leur quotidien. ", address: "ZAE du pas St Jacques, Rue des Frères Lumière, 86180 Buxerolles", price_per_day: 2)
paint.photo.attach(io: file, filename: 'paysans.png', content_type: 'image/png')
paint.user = User.where(email: "leo@mail.com").first
paint.save
puts "Created #{paint.name}"

file = URI.open('https://res.cloudinary.com/doakgwppy/image/upload/v1597747342/paintings/british-library-I-KhfDH61RA-unsplash_pk9rc8.jpg')
paint = Painting.new(name: "L'homme pensif", description: "Tableau idéal pour pièce éclairée ! En plongeant dans ce tableau vous entrez dans une quiétude et un temps de recueillement idéal dans un monde toujours plus animé. Pour la déconnexion, pour la pensée !! ", address: "40 rue Jean Jacques Rousseau, Roanne", price_per_day: 2)
paint.photo.attach(io: file, filename: 'homme.png', content_type: 'image/png')
paint.user = User.where(email: "zoe@mail.com").first
paint.save
puts "Created #{paint.name}"


puts "Finished"


puts "Creating bookings"

booking = Booking.new(starts_on: "01/07/2020" , ends_on: "20/08/2020", state: "Acceptée",total_price: 85 )
booking.user = User.where(email: "yohann@mail.com").first
booking.painting = Painting.where(name: "Paysans attristés par la sécheresse").first
booking.save
puts "Created #{booking.state}"

booking = Booking.new(starts_on: "01/07/2020" , ends_on: "12/09/2020", state: "Acceptée", total_price: 120 )
booking.user = User.where(email: "zoe@mail.com").first
booking.painting = Painting.where(name: "Paysans attristés par la sécheresse").first
booking.save
puts "Created #{booking.state}"



