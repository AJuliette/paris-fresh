module FreshPlaceHelper
  def neighborhood_has_place_type?(neighborhood, place_type)
    neighborhood.fresh_places.pluck(:place_type).uniq!.include? place_type
  end

  def place_type_translated(place_type)
    case place_type
    when "outdoor_swimming" then "Baignades extérieures"
    when "misting_device" then "Brumisateur"
    when "district_town_hall" then "Mairies d’arrondissement"
    when "boules_court" then "Terrains de boules ombragés"
    when "place_of_worship" then "Lieux de cultes naturellement frais (matériaux, ventilation, etc.)"
    when "permanent_shade_structure" then "Ombrière pérenne"
    when "swimming_pool" then "Piscine"
    when "library" then "Bibliothèques climatisées ou naturellement fraîches"
    when "public_baths" then "Bains-douches"
    when "museum" then "Musée"
    when "temporary_shade_structure" then "Ombrière temporaire"
    when "discovery_and_initiation" then "Découverte et Initiation"
    end
  end

  def fresh_places_corresponding_to_place_type(fresh_places, place_type)
    fresh_places.where(place_type: place_type)
  end
end