require 'rails_helper'

RSpec.describe DirectionFacade do 
  let(:facade) { DirectionFacade.new}

  describe '#direction_details' do 
    it 'returns direction_details from poros' do 
      expect(facade.details("1331 17th st,denver,co", "1550 Market St,denver,co")).to be_a Direction
    end 
  end 
end 