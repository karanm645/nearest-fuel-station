class Direction 
  attr_reader :distance, :time, :directions

  def initialize(data)
    @distance = data[:route][:distance]
    @time = data[:route][:formattedTime]
    @directions = parse_directions(data[:route][:legs][0][:maneuvers])
  end

  def parse_directions(maneuvers) 
    maneuvers.map do |data|
      data[:narrative]
      # return would be all directions in string format
    end 
  end 
end 