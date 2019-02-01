# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all


10.times do 
    ville = City.create!(name: Faker::Address.city)
end

10.times do
 promeneur = Dogsitter.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, city_id: rand((City.first.id)..(City.last.id)))
end

10.times do
  chien = Dog.create!(race: Faker::Dog.breed,name: Faker::Dog.name, city_id: rand((City.first.id)..(City.last.id)))
end

10.times do
 rdv = Stroll.create!(date: Faker::Time.between(2.days.ago, Date.today, :all), dog_id: rand((Dog.first.id)..(Dog.last.id)), dogsitter_id: rand((Dogsitter.first.id)..(Dogsitter.last.id)),city_id: rand((City.first.id)..(City.last.id)))
end


