require 'rails_helper'

RSpec.describe FuelStationService do 
  let(:service) { FuelStationService.new }
  describe '#get_fuel_station' do 
    it 'returns a list of json fuel stations' do 
      
      station = service.get_fuel_station("1331 17th st,denver,co")
      expect(station).to be_a Hash
      expect(station[:fuel_stations]).to be_a Array 
      expect(station[:fuel_stations][0]).to have_key(:station_name)
      expect(station[:fuel_stations][0]).to have_key(:street_address)
      expect(station[:fuel_stations][0]).to have_key(:zip)
      expect(station[:fuel_stations][0]).to have_key(:fuel_type_code)
      expect(station[:fuel_stations][0]).to have_key(:access_days_time)
    end 
  end 
end 