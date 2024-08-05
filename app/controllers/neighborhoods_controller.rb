class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.order(:number)
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])

    @fresh_places = @neighborhood.fresh_places.order(:place_type)
  end
end
