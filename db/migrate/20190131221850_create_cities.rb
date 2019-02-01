class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name # ue colone pour stocker les noms des villes
      t.timestamps
    end
  end
end
