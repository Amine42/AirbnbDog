class City < ApplicationRecord
  has_many :strolls # city est liee a plusieurs strolls
  has_many :dogsitters # city est liee a plusieurs dogsitters
  has_many :dogs # city est liee a plusieurs dogs
end
