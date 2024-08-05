class WelcomeController < ApplicationController
  def index
    @neighborhoods = Neighborhood.includes(:fresh_places).order(:number)
  end
end
