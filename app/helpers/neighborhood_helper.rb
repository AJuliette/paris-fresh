module NeighborhoodHelper
  def boolean_to_text(value)
    value ? "Oui" : "Non"
  end

  def type_to_emoji(value)
    case value
    when "outdoor_swimming" then "🏊‍♀️"
    when "misting_device" then "💦"
    when "district_town_hall" then "🏛️"
    when "boules_court" then ""
    when "place_of_worship" then "⛪"
    when "permanent_shade_structure" then "🌳"
    when "swimming_pool" then "🏊‍♀️"
    when "library" then "📚"
    when "public_baths" then "🛀"
    when "museum" then "🖼️"
    when "temporary_shade_structure" then "⛺"
    when "discovery_and_initiation" then "🔍"
    end
  end

  def coords_to_map
      [
        { "number": "75001", "coords": "193,132,15", "name": "Premier arrondissement"},
        { "number": "75002", "coords": "212,115,15", "name": "Second arrondissement"},
        { "number": "75003", "coords": "251,133,15", "name": "Troisième arrondissement"},
        { "number": "75004", "coords": "253,161,15", "name": "Quatrième arrondissement"},
        { "number": "75005", "coords": "230,193,20", "name": "Cinquième arrondissement"},
        { "number": "75006", "coords": "195,182,20", "name": "Sixième arrondissement"},
        { "number": "75007", "coords": "144,153,25", "name": "Septième arrondissement"},
        { "number": "75008", "coords": "146,99,25", "name": "Huitième arrondissement"},
        { "number": "75009", "coords": "195,88,20", "name": "Neuvième arrondissement"},
        { "number": "75010", "coords": "253,91,25", "name": "Dixième arrondissement"},
        { "number": "75011", "coords": "291,138,25", "name": "Onzième arrondissement"},
        { "number": "75012", "coords": "315,200,30", "name": "Douzième arrondissement"},
        { "number": "75013", "coords": "251,238,35", "name": "Treizième arrondissement"},
        { "number": "75014", "coords": "180,232,25", "name": "Quatorzième arrondissement"},
        { "number": "75015", "coords": "101,200,30", "name": "Quinzième arrondissement"},
        { "number": "75016", "coords": "72,128,25", "name": "Seizième arrondissement"},
        { "number": "75017", "coords": "138,50,35", "name": "Dix-Septième arrondissement"},
        { "number": "75018", "coords": "226,36,35", "name": "Dix-Huitième arrondissement"},
        { "number": "75019", "coords": "306,56,30", "name": "Dix-Neuvième arrondissement"},
        { "number": "75020", "coords": "339,130,30", "name": "Vingtième arrondissement"}
      ]
  end
end
