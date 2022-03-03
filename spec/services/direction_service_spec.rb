require 'rails_helper'

RSpec.describe DirectionService do 
  let(:service) { DirectionService.new }
  describe '#get_direction' do 
    it 'returns a list of json direction info' do 
      direction = service.get_direction("1331 17th st,denver,co", "1555 Blake st,denver,co")
      expect(direction[:route]).to be_a Hash
      expect(direction[:route]).to have_key(:distance)
      expect(direction[:route]).to have_key(:formattedTime)
      
      direction[:route][:legs][0][:maneuvers].map do |data|
        expect(data).to have_key(:narrative)
      end 
    end 
  end 
end 