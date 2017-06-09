# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy all cart items..."
CartItem.destroy_all
puts "All cart items destroyed!"
puts "Destroy all pills..."
Pill.destroy_all
puts "All pills destroyed!"
doliprane = Pill.create!(
  name: "Doliprane",
  brand: "Sanofi",
  description: "Médicament pour soigner les maux de tête",
  price: 2.10,
  category: "Douleurs",
  stock: 100,
  photo: "doliprane.png",
  brandphoto: "sanofi.png",
  capacity: "8 SACHETS DOSES"
  )

spasfon = Pill.create!(
  name: "Spasfon",
  brand: "Teva",
  description: "Médicament indiqué pour traiter les spasmes intestinaux",
  price: 2.99,
  category: "Douleurs",
  stock: 50,
  photo: "spasfon.png",
  brandphoto: "teva.png",
  capacity: "30 COMPRIMES"
  )

aspegic = Pill.create!(
  name: "Aspegic",
  brand: "Sanofi",
  description: "Médicament indiqué pour traiter les maux de tête",
  price: 5.50,
  category: "Douleurs",
  stock: 70,
  photo: "aspegic.png",
  brandphoto: "sanofi.png",
  capacity: "30 SACHETS DOSES"
  )

smecta = Pill.create!(
  name: "Smecta",
  brand: "Ipsen",
  description: "Médicament indiqué pour traiter la diarrhée",
  price: 4.35,
  category: "Digestion",
  stock: 40,
  photo: "smecta.png",
  brandphoto: "ipsen.png",
  capacity: "60 SACHETS"
  )

strepsils = Pill.create!(
  name: "Strepsils",
  brand: "Reckitt Benckiser",
  description: "Médicament pour traiter les maux de gorge",
  price: 5.20,
  category: "Douleurs",
  stock: 80,
  photo: "strepsils.png",
  brandphoto: "reckitt.png",
  capacity: "24 PASTILLES"
  )

cotopads = Pill.create!(
  name: "Cotopads",
  brand: "Lohmann",
  description: "Ce coton est idéal pour les soins quotidien",
  price: 5.20,
  category: "Pansements",
  stock: 80,
  photo: "cotopads.png",
  brandphoto: "lohmann.png",
  capacity: "500 Pièces"
  )

exomega = Pill.create!(
  name: "Exomega",
  brand: "Aderma",
  description: "Une crème pour traiter les sécheresses de peau",
  price: 10.90,
  category: "Hydratant",
  stock: 80,
  photo: "exomega.png",
  brandphoto: "aderma.png",
  capacity: "100 ML"
  )

actirub = Pill.create!(
  name: "Actirub",
  brand: "Santeverte",
  description: "Complexe de plante permettant de traiter le rhume",
  price: 11.30,
  category: "Bien-être",
  stock: 80,
  photo: "actirub.png",
  brandphoto: "santeverte.png",
  capacity: "15 SACHETS"
  )

adiaril = Pill.create!(
  name: "Adiaril",
  brand: "Santeverte",
  description: "Sachets de réhydratation pour les diarrhées du nourrisson",
  price: 5.90,
  category: "Bébés",
  stock: 80,
  photo: "adiaril.png",
  brandphoto: "santeverte.png",
  capacity: "125 G PAR SACHET"
  )

ergymunil = Pill.create!(
  name: "Ergymunil",
  brand: "Nutergia",
  description: "Complexe de plantes pour booster votre immunité",
  price: 20.90,
  category: "Immunité",
  stock: 80,
  photo: "ergymunyl.png",
  brandphoto: "nutergia.png",
  capacity: "150 ML"
  )

gallia = Pill.create!(
  name: "Lait infantile Gallia",
  brand: "Gallia",
  description: "Lait infantile 1er âge pour les nourrissons",
  price: 6.30,
  category: "Bébés",
  stock: 80,
  photo: "gallialait.png",
  brandphoto: "gallia.png",
  capacity: "500 MG"
  )

suppo = Pill.create!(
  name: "Suppositoires à la glycérine",
  brand: "Ipsen",
  description: "Des suppositoires pour faire face à la constipation",
  price: 13.40,
  category: "Constipation",
  stock: 80,
  photo: "suppositoires-glycerine.png",
  brandphoto: "ipsen.png",
  capacity: "24 SUPPOSITOIRES"
  )

fruits = Pill.create!(
  name: "Fruits & Fibres",
  brand: "Fruits",
  description: "Fruits & Fibres Transit est un complément alimentaire sous forme de cubes",
  price: 13.40,
  category: "Constipation",
  stock: 80,
  photo: "Fruitsetfibres.png",
  brandphoto: "ipsen.png",
  capacity: "12 CARRES"
  )

fruits = Pill.create!(
  name: "Dulcolax",
  brand: "Merck",
  description: "Des comprimés efficaces pour traiter la constipation",
  price: 13.40,
  category: "Constipation",
  stock: 80,
  photo: "dulcolax.png",
  brandphoto: "ipsen.png",
  capacity: "16 COMPRIMES"
  )


puts "Pills seeded"
