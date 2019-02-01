require 'faker' # on inclus la gem faker qui avs nous permettre de generer des donnees

# on vide toutes les tables

Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all

# on fait 20 tours de boucle ici
20.times do 
  # on remplis la table City avec des donnee cree par faker
  ville = City.create!(name: Faker::Address.city)
end

# on fait 18 tours de boucle ici
18.times do
  # on remplis la table Dogsitter avec des donnee cree par faker
  promeneur = Dogsitter.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, city_id: rand((City.first.id)..(City.last.id)))
end

# on fait 41 tours de boucle ici
41.times do
  # on remplis la table Dog avec des donnee cree par faker
  chien = Dog.create!(race: Faker::Dog.breed,name: Faker::Dog.name, city_id: rand((City.first.id)..(City.last.id)))
end

# on fait 89 tours de boucle ici
89.times do
  # on remplis la table Stroll avec des donnee cree par faker
  rdv = Stroll.create!(date: Faker::Time.between(2.days.ago, Date.today, :all), dog_id: rand((Dog.first.id)..(Dog.last.id)), dogsitter_id: rand((Dogsitter.first.id)..(Dogsitter.last.id)),city_id: rand((City.first.id)..(City.last.id)))
end


