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
  description: "Médicament indiqué contre les spasmes intestinaux",
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
  description: "Médicament indiqués pour traiter les maux de tête",
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
  description: "Médicament pour traiter la diarrhée",
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
  description: "Médicament pour les maux de gorge",
  price: 5.20,
  category: "Douleurs",
  stock: 80,
  photo: "strepsils.png",
  brandphoto: "reckitt.png",
  capacity: "24 PASTILLES"
  )

strepsils = Pill.create!(
  name: "Strepsils",
  brand: "Reckitt Benckiser",
  description: "Médicament pour les maux de gorge",
  price: 5.20,
  category: "Douleurs",
  stock: 80,
  photo: "strepsils.png",
  brandphoto: "reckitt.png",
  capacity: "24 PASTILLES"
  )

exomega = Pill.create!(
  name: "Exomega",
  brand: "Aderma",
  description: "Permet de traiter les sécheresses de peau",
  price: 10.90,
  category: "Hydratant",
  stock: 80,
  photo: "exomega.png",
  brandphoto: "aderma.png",
  capacity: "100 mL"
  )

actirub = Pill.create!(
  name: "Actirub",
  brand: "Santé Verte",
  description: "Permet de traiter le rhume",
  price: 11.30,
  category: "Bien-être",
  stock: 80,
  photo: "actirub.png",
  brandphoto: "santeverte.png",
  capacity: "15 sachets"
  )


puts "Pills seeded"
