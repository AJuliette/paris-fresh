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
        ["1", "193,132,15"],
        ["2", "212,115,15"],
        ["3", "251,133,15"],
        ["4", "253,161,15"],
        ["5", "230,193,20"],
        ["6", "195,182,20"],
        ["7", "144,153,25"],
        ["8", "146,99,25"],
        ["9", "195,88,20"],
        ["10", "253,91,25"],
        ["11", "291,138,25"],
        ["12", "315,200,30"],
        ["13", "251,238,35"],
        ["14", "180,232,25"],
        ["15", "101,200,30"],
        ["16", "72,128,25"],
        ["17", "138,50,35"],
        ["18", "226,36,35"],
        ["19", "306,56,30"],
        ["20", "339,130,30"],
      ]
  end
end
