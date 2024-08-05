class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.order(:number)
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
  end
end
