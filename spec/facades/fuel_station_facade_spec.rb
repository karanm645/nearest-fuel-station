require 'rails_helper' 

RSpec.describe FuelStationFacade do 
  let(:facade) { FuelStationFacade.new}
  describe '#fuel_station_details' do 
    it 'returns fuel_station_details from poros' do 
      expect(facade.details("1331 17th st,denver,co")).to be_a FuelStation
    end 
  end 
end 