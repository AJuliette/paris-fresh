require 'json'

class ImportGreenSpacesJob
  include SuckerPunch::Job

  def perform
    file = File.read('data/ilots_de_fraicheur_espaces_verts_frais_tries.json')
    data = JSON.parse(file)

    data.map do |green_space_hash|
      next if green_space_hash["nom"].nil?

      green_space = GreenSpace.find_or_initialize_by(name: green_space_hash["nom"])
      green_space.address = green_space_hash["adresse"]
      green_space.neighborhood_number = green_space_hash["arrondissement"]
      green_space.neighborhood_id = Neighborhood.find_by(number: green_space.neighborhood_number).id

      green_space.save!
    end
  end
end
