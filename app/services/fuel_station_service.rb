class FuelStationService 
  def get_fuel_station(start_location)
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['nrel_key']}&location=#{start_location}&limit=1")
    
    JSON.parse(response.body, symbolize_names: true)
  end
end
