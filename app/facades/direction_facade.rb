class DirectionFacade
  def details(start, final)
    Direction.new(service.get_direction(start, final))
  end 

  def service
    DirectionService.new
  end 
end 