class CreateDogsitters < ActiveRecord::Migration[5.2]
  def change
    create_table :dogsitters do |t|
      t.string :first_name # on cree une colone first name
      t.string :last_name
      t.belongs_to :city, index: true, optional: true # on cree une colone city_id pour liee une ville au dogsitter
      t.timestamps
    end
  end
end
