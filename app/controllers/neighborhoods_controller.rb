class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.order(:number)
  end

  def show
    @neighborhood = Neighborhood.find_by_number(params[:number])

    @fresh_places = @neighborhood.fresh_places.order(:place_type)

    @fountains = Fountain.where(neighborhood: @neighborhood, working: true).where.not(street_number: nil)
  end
end
