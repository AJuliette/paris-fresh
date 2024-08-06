class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.order(:number)
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])

    @fresh_places = @neighborhood.fresh_places.order(:place_type)

    @fountains = Fountain.where(neighborhood: @neighborhood).where.not(street_number: nil)
  end
end
