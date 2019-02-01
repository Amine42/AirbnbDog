class Stroll < ApplicationRecord
  belongs_to :dog, optional: true # un stroll est liee a un dog
  belongs_to :dogsitter, optional: true # un stroll est liee a un dogsitter
  belongs_to :city, optional: true # un stroll est liee a une city
end
