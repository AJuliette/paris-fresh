require 'json'

class ImportDrinkingFountainsJob
  include SuckerPunch::Job

  def perform
    file = File.read('data/fontaines_a_boire.json')
    data = JSON.parse(file)

    data.map do |fountain_hash|
      next if ["PANTIN","THIAIS","IVRY-SUR-SEINE","SAINT-OUEN", "BAGNEUX", "SAINT-MANDE", "SAINT-DENIS", "NOGENT-SUR-MARNE"].include? fountain_hash["commune"]
      fountain = Fountain.find_or_initialize_by(open_data_identifier: fountain_hash["gid"])
      fountain.name = fountain_hash["nom"]
      fountain.neighborhood_number = fountain_hash["arrondissement"]
      fountain.street_name = fountain_hash["voie"]
      if fountain_hash["no_voirie_impair"].nil? 
        fountain.street_number = fountain_hash["no_voirie_pair"]
      else
        fountain.street_number = fountain_hash["no_voirie_impair"]
      end
      fountain.working = case fountain_hash["dispo"]
                        when "OUI" then true
                        when "NON" then false
                        end
      fountain.model = fountain_hash["modele"]
      fountain.neighborhood_id = case fountain_hash["commune"]
                                  when "PARIS 1ER ARRONDISSEMENT" then Neighborhood.find_by(number: 75001).id
                                  when "PARIS 2EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75002).id
                                  when "PARIS 3EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75003).id
                                  when "PARIS 4EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75004).id
                                  when "PARIS 5EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75005).id
                                  when "PARIS 6EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75006).id
                                  when "PARIS 7EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75007).id
                                  when "PARIS 8EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75008).id
                                  when "PARIS 9EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75009).id
                                  when "PARIS 10EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75010).id
                                  when "PARIS 11EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75011).id
                                  when "PARIS 12EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75012).id
                                  when "PARIS 13EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75013).id
                                  when "PARIS 14EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75014).id
                                  when "PARIS 15EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75015).id
                                  when "PARIS 16EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75016).id
                                  when "PARIS 17EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75017).id
                                  when "PARIS 18EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75018).id
                                  when "PARIS 19EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75019).id
                                  when "PARIS 20EME ARRONDISSEMENT" then Neighborhood.find_by(number: 75020).id
                                  end
      fountain.save!
    end
  end
end
