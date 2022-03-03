class DirectionService
  def get_direction(location, final_destination)
    response = Faraday.get("http://www.mapquestapi.com/directions/v2/route?key=#{ENV["mapquest_key"]}&from=#{location}&to=#{final_destination}")
    
    JSON.parse(response.body, symbolize_names: true)
  end
end 