# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rescues = Rescue.create(name: "Underdog NE", location: "Binghamton, NY")

dog = Dog.create(name: "Phoenix", img_url: "https://www.petmd.com/sites/default/files/styles/article_image/public/petmd-puppy-weight.jpg?itok=IwMOwGSX", description: "playful, young pup, gets along with other dogs, loves kids, hates the car", rescue_id: 1)
dog_two = Dog.create(name: "Luna", img_url: "https://www.petmd.com/sites/default/files/styles/article_image/public/puppy-laying-down-outside.jpg?itok=ClNNCi52", description: "playful", rescue_id: 1)