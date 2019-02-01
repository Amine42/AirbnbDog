class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :race # on cree une colone dans la table pour la race du chien
      t.string :name
      t.belongs_to :city, index: true, optional: true # on cree une colone city_id pour liee une ville au dog
      t.timestamps
    end
  end
end
