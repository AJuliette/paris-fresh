require 'json'

class ImportFreshPlacesJob
  include SuckerPunch::Job

  def perform
    file = File.read('tmp/ilots-de-fraicheur-equipements-activites.json')
    data = JSON.parse(file)

    data.map do |fresh_place_hash|
      fresh_place = FreshPlace.find_or_initialize_by(open_data_identifier: fresh_place_hash["identifiant"])
      fresh_place.name = fresh_place_hash["nom"]
      fresh_place.neighborhood_number = fresh_place_hash["arrondissement"]
      fresh_place.street_address = fresh_place_hash["adresse"]
      fresh_place.neighborhood_id = Neighborhood.find_by(number: fresh_place.neighborhood_number).id
      fresh_place.free = case fresh_place_hash["payant"]
                          when "Oui" then false
                          when "Non" then true
                          end
      fresh_place.place_type = case fresh_place_hash["type"]
                          when "Baignade extérieure" then :outdoor_swimming
                          when "Brumisateur" then :misting_device
                          when "Mairie d'arrondissement" then :district_town_hall
                          when "Terrain de boules" then :boules_court
                          when "Lieux de culte" then :place_of_worship
                          when "Ombrière pérenne" then :permanent_shade_structure
                          when "Piscine" then :swimming_pool
                          when "Bibliothèque" then :library
                          when "Bains-douches" then :public_baths
                          when "Musée" then :museum
                          when "Ombrière temporaire" then :temporary_shade_structure
                          when "Découverte et Initiation" then :discovery_and_initiation
                          end
      fresh_place.save!
    end
  end
end
