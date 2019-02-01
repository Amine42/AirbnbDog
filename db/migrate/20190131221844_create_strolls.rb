class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.datetime :date # on cree une colone pour mettre une date pour le rendez vous de la promenade
      t.belongs_to :city,index: true, optional: true # on cree une colone city_id pour liee la promenade a la ville dans laquel la promenade aura lieu
      t.belongs_to :dog, index: true, optional: true # on cree une colone dog_id pour mettre l'id du chien qui vas etre promener
      t.belongs_to :dogsitter, index: true, optional: true # on cree une colone dogsitter_id pour y mettre les id des promenneurs
      t.timestamps
    end
  end
end
