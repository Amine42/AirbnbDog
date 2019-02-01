class Dogsitter < ApplicationRecord
  belongs_to :city, optional: true # un dogsitter est liee a une ville
  has_many :strolls # un dogsitter peut avoir plusieurs strolls
  has_many :dogs, through: :strolls # un dogsitter sera liee a un dog dans la table strolls
end
