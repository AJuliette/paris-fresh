class WelcomeController < ApplicationController
  def index
    @fresh_places_75001 = FreshPlace.where(neighborhood: "75001")
    @fresh_places_75002 = FreshPlace.where(neighborhood: "75002")
  end
end
