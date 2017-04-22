# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
  name =  Faker::HarryPotter.character
  Owner.create(name: name, email: Faker::Internet.email(name))
end

owners_ids = Owner.all.pluck(:id)
30.times do
  Dog.create(name: Faker::Cat.name, owner_id: owners_ids.sample, breed: Faker::Cat.breed)
end


