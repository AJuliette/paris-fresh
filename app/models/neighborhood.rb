class Neighborhood < ApplicationRecord
  has_many :fresh_places
  has_many :fountains
  has_many :green_spaces
end
