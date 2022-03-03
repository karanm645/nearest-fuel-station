class FuelStationFacade 
  def details(location)
    FuelStation.new(service.get_fuel_station(location))
  end

  def service 
    FuelStationService.new
  end 
end 