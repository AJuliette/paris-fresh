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
end
