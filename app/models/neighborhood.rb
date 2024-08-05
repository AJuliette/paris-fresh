class Neighborhood < ApplicationRecord
  has_many :fresh_places
  has_many :fountains
end
