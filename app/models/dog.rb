class Dog < ApplicationRecord
  belongs_to :city, optional: true # on lie l'id d'une ville au chien
  has_many :strolls # on lie le dog au strolls
  has_many :dogsitters, through: :strolls # un dog sera liee a un dogsitter dans la ctable strolls
end
