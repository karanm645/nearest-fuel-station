class SearchController < ApplicationController
  def index 
    @fuel_station = FuelStationFacade.new.details(params[:location])
    @direction_information = DirectionFacade.new.details(params[:location], @fuel_station.street)
  end 
end 