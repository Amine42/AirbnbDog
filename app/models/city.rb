class City < ApplicationRecord
  belongs_to :strolls ,optional: true
end
