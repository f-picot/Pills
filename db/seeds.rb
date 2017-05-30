# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

doliprane = Pill.create!(
  name: "Doliprane Douleurs & fièvres",
  brand: "Sanofi Aventis",
  description: "Paracetamol, médicament pour les maux de tête",
  price: 2.10,
  category: "Fièvres",
  stock: 100,
  photo: "doliprane.png"
  )

spasfon = Pill.create!(
  name: "Spasfon Douleurs spasmodiques",
  brand: "Teva",
  description: "Produit de référence indiqué contre les spasmes intestinaux",
  price: 2.99,
  category: "Douleurs",
  stock: 50,
  photo: "spasfon.png"
  brandphoto: "photo.png"
  )

aspegic = Pill.create!(
  name: "Aspegic",
  brand: "Sanofi Aventis",
  description: "Médicament pour les maux de tête",
  price: 5.50,
  category: "Fièvres",
  stock: 70,
  photo: "aspegic.png"
  )

smecta = Pill.create!(
  name: "Smecta",
  brand: "Ipsen",
  description: "Médicament pour les maux de ventre",
  price: 4.35,
  category: "Douleurs",
  stock: 40,
  photo: "smecta.png"
  )

strepsils = Pill.create!(
  name: "Strepsils",
  brand: "Reckitt Benckiser",
  description: "Médicament pour les maux de gorge",
  price: 5.20,
  category: "Douleurs",
  stock: 80,
  photo: "strepsils.png"
  )



