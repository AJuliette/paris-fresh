# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

neighborhoods = [
{"arrondissement": "75001", "arrondissement_en_chiffre": "Premier Arrondissement", "map_ign": "gpBXln"},
{"arrondissement": "75002", "arrondissement_en_chiffre": "Second Arrondissement", "map_ign": "DFiXq2"},
{"arrondissement": "75003", "arrondissement_en_chiffre": "Troisième Arrondissement"},
{"arrondissement": "75004", "arrondissement_en_chiffre": "Quatrième Arrondissement"},
{"arrondissement": "75005", "arrondissement_en_chiffre": "Cinquième Arrondissement"},
{"arrondissement": "75006", "arrondissement_en_chiffre": "Sixième Arrondissement"},
{"arrondissement": "75007", "arrondissement_en_chiffre": "Septième Arrondissement"},
{"arrondissement": "75008", "arrondissement_en_chiffre": "Huitième Arrondissement"},
{"arrondissement": "75009", "arrondissement_en_chiffre": "Neuvième Arrondissement"},
{"arrondissement": "75010", "arrondissement_en_chiffre": "Dixième Arrondissement"},
{"arrondissement": "75011", "arrondissement_en_chiffre": "Onzième Arrondissement"},
{"arrondissement": "75012", "arrondissement_en_chiffre": "Douzième Arrondissement"},
{"arrondissement": "75013", "arrondissement_en_chiffre": "Treizième Arrondissement"},
{"arrondissement": "75014", "arrondissement_en_chiffre": "Quatorzième Arrondissement"},
{"arrondissement": "75015", "arrondissement_en_chiffre": "Quinzième Arrondissement"},
{"arrondissement": "75016", "arrondissement_en_chiffre": "Seizième Arrondissement"},
{"arrondissement": "75017", "arrondissement_en_chiffre": "Dix-Septième Arrondissement"},
{"arrondissement": "75018", "arrondissement_en_chiffre": "Dixhuitième Arrondissement"},
{"arrondissement": "75019", "arrondissement_en_chiffre": "Dix-Neuvième Arrondissement"},
{"arrondissement": "75020", "arrondissement_en_chiffre": "Vingtième Arrondissement"},

]

neighborhoods.each do |neighborhood_hash|
    neighborhood = Neighborhood.find_or_initialize_by(number: neighborhood_hash[:arrondissement])
    neighborhood.name = neighborhood_hash[:arrondissement_en_chiffre]
    neighborhood.ign_map = neighborhood_hash[:map_ign]
    neighborhood.save
end
