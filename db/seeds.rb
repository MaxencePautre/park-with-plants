# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning the database"
puts "adding gardens insisde the database"
Garden.destroy_all


gardens = [ 
  {
    name: "le jardin du roi",
    banner_url: "https://images.unsplash.com/photo-1572085313466-6710de8d7ba3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80"
  },
  {
    name: "l'autre jardin",
    banner_url: "https://images.unsplash.com/photo-1558293842-c0fd3db86157?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=664&q=80"
  },
  {
    name: "encore un jardin",
    banner_url: "https://images.unsplash.com/photo-1554663565-f60b88adfa08?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80"
  }
]
 
gardens.each_with_index do |garden, index|
  Garden.create(garden)
  puts "#{index +1}. #{garden[:name]} ajouté à la base"
  sleep(2)
end

Tag.create!(name: "piquant")
Tag.create!(name:"pointu")
Tag.create!(name: "vert")
Tag.create!(name: "visqueux")
 
puts "seed terminé"