# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

doliprane = Pill.new(
  name: "Doliprane",
  brand: "Sanofi Aventis",
  description: "Paracetamol, médicament pour les maux de tête",
  price: 2.10,
  category: "Fièvres",
  stock: 100,
  )
doliprane.save

spasfon = Pill.new(
  name: "Spasfon",
  brand: "Teva",
  description: "Douleurs spasmodiques",
  price: 2.99,
  category: "Douleurs",
  stock: 50,
  )
spasfon.save

aspegic = Pill.new(
  name: "Aspegic",
  brand: "Sanofi Aventis",
  description: "Médicament pour les maux de tête",
  price: 5.50,
  category: "Fièvres",
  stock: 70,
  )
aspegic.save

smecta = Pill.new(
  name: "Smecta",
  brand: "Ipsen",
  description: "Médicament pour les maux de ventre",
  price: 4.35,
  category: "Douleurs",
  stock: 40,
  )
smecta.save

strepsils = Pill.new(
  name: "Strepsils",
  brand: "Reckitt Benckiser",
  description: "Médicament pour les maux de gorge",
  price: 5.20,
  category: "Douleurs",
  stock: 80,
  )
strepsils.save



