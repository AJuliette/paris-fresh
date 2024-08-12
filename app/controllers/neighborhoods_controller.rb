class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.order(:number)
    @data_stacked = FreshPlace.includes(:neighborhood).all
            .group_by(&:place_type)
            .map { |place_type, fresh_places| {"name" => helpers.place_type_translated(place_type), "data" => fresh_places.map { |fresh_place| "#{fresh_place.neighborhood.number}"}.tally.map {|neighborhood_number,occurences| [neighborhood_number, occurences] }}}
  end

  def show
    @neighborhood = Neighborhood.find_by_number(params[:number])
    @fresh_places = @neighborhood.fresh_places.order(:place_type)
    @fountains = Fountain.working.with_address.where(neighborhood: @neighborhood)
    @green_spaces = @neighborhood.green_spaces
  end
end
