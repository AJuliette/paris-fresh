class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.order(:number)
  end

  def show
    @neighborhood = Neighborhood.find_by_number(params[:number]) || Neighborhood.find(params[:number])
    @fresh_places = @neighborhood.fresh_places.order(:place_type)
    @fountains = Fountain.working.with_address.where(neighborhood: @neighborhood)
    @green_spaces = @neighborhood.green_spaces
  end
end
