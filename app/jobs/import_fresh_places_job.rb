class ImportFreshPlacesJob < ApplicationJob

  queue_as :default

  def perfom
    binding.pry
  end
end