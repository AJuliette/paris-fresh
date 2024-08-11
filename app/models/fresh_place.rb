class FreshPlace < ApplicationRecord
  scope :filter_by_place_type, -> (place_type) { where place_type: place_type }

  belongs_to :neighborhood

  enum :place_type, [
    :outdoor_swimming,
    :misting_device,
    :district_town_hall,
    :boules_court,
    :place_of_worship,
    :permanent_shade_structure,
    :swimming_pool,
    :library,
    :public_baths,
    :museum,
    :temporary_shade_structure,
    :discovery_and_initiation
  ]
end