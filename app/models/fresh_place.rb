class FreshPlace < ApplicationRecord
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